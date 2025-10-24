from fastapi import APIRouter, HTTPException
from pydantic import BaseModel
from typing import Optional
import logging
from datetime import datetime

from services.database_service import DatabaseService

router = APIRouter(prefix="/sync", tags=["Data Synchronization"])
logger = logging.getLogger(__name__)

class SurveySync(BaseModel):
    survey_id: int
    source: str = "laravel_finalization"

class SyncResponse(BaseModel):
    success: bool
    message: str
    synced_at: Optional[str] = None
    records_synced: Optional[int] = None

@router.post("/survey", response_model=SyncResponse)
async def sync_survey_data(sync_request: SurveySync):
    """
    Sync finalized survey data from Laravel MySQL to PostgreSQL
    This triggers ML retraining with new survey data
    """
    try:
        logger.info(f"📥 Syncing survey {sync_request.survey_id} from {sync_request.source}")
        
        db_service = DatabaseService()
        
        # Fetch survey with related data from MySQL
        survey_query = """
            SELECT 
                s.id, s.master_survey_id, s.triwulan, s.year, 
                s.payment_month, s.payment_id, s.team_id, s.rate, s.status,
                s.created_at, s.updated_at,
                ms.name as survey_name, ms.type as survey_type
            FROM surveys s
            LEFT JOIN master_surveys ms ON s.master_survey_id = ms.id
            WHERE s.id = %s
        """
        
        surveys = db_service.fetch_from_mysql(survey_query, (sync_request.survey_id,))
        
        if not surveys:
            raise HTTPException(
                status_code=404,
                detail=f"Survey {sync_request.survey_id} not found"
            )
        
        survey = surveys[0]
        
        # Fetch transactions for this survey
        transactions_query = """
            SELECT 
                t.id, t.mitra_id, t.survey_id, t.target, t.rate,
                t.created_at, t.updated_at,
                m.name as mitra_name, m.email as mitra_email
            FROM survey_transactions t
            LEFT JOIN mitras m ON t.mitra_id = m.id
            WHERE t.survey_id = %s
        """
        
        transactions = db_service.fetch_from_mysql(transactions_query, (sync_request.survey_id,))
        
        # Fetch nilai1s (ratings) for these transactions
        transaction_ids = [t['id'] for t in transactions]
        nilai1s = []
        
        if transaction_ids:
            placeholders = ','.join(['%s'] * len(transaction_ids))
            nilai1s_query = f"""
                SELECT 
                    survey_transaction_id as transaction_id, aspek1, aspek2, aspek3, rerata,
                    created_at, updated_at
                FROM nilai1s
                WHERE survey_transaction_id IN ({placeholders})
            """
            
            nilai1s = db_service.fetch_from_mysql(nilai1s_query, tuple(transaction_ids))
        
        # Prepare data for PostgreSQL upsert
        records_synced = 0
        
        # Upsert survey to PostgreSQL
        survey_data = {
            'id': survey['id'],
            'master_survey_id': survey['master_survey_id'],
            'triwulan': survey['triwulan'],
            'year': survey['year'],
            'payment_month': survey.get('payment_month'),
            'payment_id': survey.get('payment_id'),
            'team_id': survey.get('team_id'),
            'rate': survey.get('rate'),
            'status': survey.get('status'),
            'created_at': survey.get('created_at'),
            'updated_at': survey.get('updated_at')
        }
        
        # Execute upsert for survey
        pg_conn = db_service.get_postgres_connection()
        pg_cursor = pg_conn.cursor()
        
        try:
            pg_cursor.execute("""
                INSERT INTO surveys_cleaned (
                    id, master_survey_id, triwulan, year, payment_month, payment_id, team_id,
                    rate, status, created_at, updated_at
                ) VALUES (%s, %s, %s, %s, %s, %s, %s, %s, %s, %s, %s)
                ON CONFLICT (id) DO UPDATE SET
                    status = EXCLUDED.status,
                    updated_at = EXCLUDED.updated_at
            """, (
                survey_data['id'], survey_data['master_survey_id'], survey_data['triwulan'],
                survey_data['year'], survey_data['payment_month'], survey_data['payment_id'], 
                survey_data['team_id'], survey_data['rate'], survey_data['status'], 
                survey_data['created_at'], survey_data['updated_at']
            ))
            records_synced += 1
            
            # Upsert transactions
            for trans in transactions:
                pg_cursor.execute("""
                    INSERT INTO transactions_cleaned (
                        id, mitra_id, survey_id, target, rate, created_at, updated_at
                    ) VALUES (%s, %s, %s, %s, %s, %s, %s)
                    ON CONFLICT (id) DO UPDATE SET
                        target = EXCLUDED.target,
                        rate = EXCLUDED.rate,
                        updated_at = EXCLUDED.updated_at
                """, (
                    trans['id'], trans['mitra_id'], trans['survey_id'],
                    trans.get('target'), trans.get('rate'), 
                    trans.get('created_at'), trans.get('updated_at')
                ))
                records_synced += 1
            
            # Upsert nilai1s
            for nilai in nilai1s:
                pg_cursor.execute("""
                    INSERT INTO nilai1s_cleaned (
                        transaction_id, aspek1, aspek2, aspek3, rerata, created_at, updated_at
                    ) VALUES (%s, %s, %s, %s, %s, %s, %s)
                    ON CONFLICT (transaction_id) DO UPDATE SET
                        aspek1 = EXCLUDED.aspek1,
                        aspek2 = EXCLUDED.aspek2,
                        aspek3 = EXCLUDED.aspek3,
                        rerata = EXCLUDED.rerata,
                        updated_at = EXCLUDED.updated_at
                """, (
                    nilai['transaction_id'], nilai.get('aspek1'), nilai.get('aspek2'),
                    nilai.get('aspek3'), nilai.get('rerata'), 
                    nilai.get('created_at'), nilai.get('updated_at')
                ))
                records_synced += 1
            
            pg_conn.commit()
            logger.info(f"✅ Synced {records_synced} records for survey {sync_request.survey_id}")
            
            return SyncResponse(
                success=True,
                message=f"Successfully synced survey {sync_request.survey_id}",
                synced_at=datetime.now().isoformat(),
                records_synced=records_synced
            )
            
        finally:
            pg_cursor.close()
            pg_conn.close()
        
    except HTTPException as he:
        raise he
    except Exception as e:
        logger.error(f"❌ Sync error: {str(e)}")
        raise HTTPException(status_code=500, detail=f"Sync failed: {str(e)}")
