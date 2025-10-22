from fastapi import APIRouter, Query
from typing import Optional
from services.database_service import fetch_table
import psycopg2
import psycopg2.extras
import os

router = APIRouter(prefix="/rekomendasi", tags=["Rekomendasi"])

@router.get("/rumah_tangga")
def rekom_rumah_tangga(
    limit: Optional[int] = Query(None, description="Limit hasil (default: semua)"),
    min_score: Optional[float] = Query(0.0, description="Minimum final_rank_score")
):
    """
    Get recommendations for Rumah Tangga with experience aggregation
    
    Returns mitra sorted by final_rank_score (ML rating + historical performance + experience)
    
    Args:
        limit: Jumlah maksimal mitra yang dikembalikan (optional, default: semua)
        min_score: Minimum final_rank_score untuk filter (default: 0.0)
        
    Returns:
        JSON dengan data rekomendasi mitra Rumah Tangga
        - mitra_id: ID mitra
        - mitra_name: Nama mitra
        - survey_score: Avg performance dari historical survey
        - jumlah_survey: Total experience count
        - optimized_score: ML rating (dari PSO optimization)
        - final_rank_score: Combined score (50% ML + 50% experience)
    """
    try:
        conn = psycopg2.connect(
            host=os.getenv("DB_HOST", "postgres"),
            port=os.getenv("DB_PORT", "5432"),
            database=os.getenv("DB_NAME", "mitra_kaido"),
            user=os.getenv("DB_USER", "postgres"),
            password=os.getenv("DB_PASS", "postgres")
        )
        cursor = conn.cursor(cursor_factory=psycopg2.extras.RealDictCursor)
        
        query = """
            SELECT 
                mitra_id,
                mitra_name,
                survey_type,
                survey_score,
                jumlah_survey,
                exp_norm,
                weighted_score,
                optimized_score,
                final_rank_score,
                created_at
            FROM recommendation_rumah_tangga
            WHERE final_rank_score >= %s
            ORDER BY final_rank_score DESC
        """
        
        params = [min_score]
        if limit:
            query += " LIMIT %s"
            params.append(limit)
        
        cursor.execute(query, params)
        results = cursor.fetchall()
        
        cursor.close()
        conn.close()
        
        data = []
        for row in results:
            row_dict = dict(row)
            for key in row_dict:
                if hasattr(row_dict[key], 'real'):
                    row_dict[key] = float(row_dict[key])
            data.append(row_dict)
        
        return {
            "status": "success",
            "survey_type": "Rumah Tangga",
            "count": len(data),
            "description": "ML rating + Historical performance + Experience combined",
            "data": data
        }
    
    except Exception as e:
        return {
            "status": "error",
            "detail": str(e)
        }

@router.get("/perusahaan")
def rekom_perusahaan(
    limit: Optional[int] = Query(None, description="Limit hasil (default: semua)"),
    min_score: Optional[float] = Query(0.0, description="Minimum final_rank_score")
):
    """
    Get recommendations for Perusahaan with experience aggregation
    
    Returns mitra sorted by final_rank_score (ML rating + historical performance + experience)
    
    Args:
        limit: Jumlah maksimal mitra yang dikembalikan (optional, default: semua)
        min_score: Minimum final_rank_score untuk filter (default: 0.0)
        
    Returns:
        JSON dengan data rekomendasi mitra Perusahaan
        - mitra_id: ID mitra
        - mitra_name: Nama mitra
        - survey_score: Avg performance dari historical survey
        - jumlah_survey: Total experience count
        - optimized_score: ML rating (dari PSO optimization)
        - final_rank_score: Combined score (60% performance + 40% experience)
    """
    try:
        conn = psycopg2.connect(
            host=os.getenv("DB_HOST", "postgres"),
            port=os.getenv("DB_PORT", "5432"),
            database=os.getenv("DB_NAME", "mitra_kaido"),
            user=os.getenv("DB_USER", "postgres"),
            password=os.getenv("DB_PASS", "postgres")
        )
        cursor = conn.cursor(cursor_factory=psycopg2.extras.RealDictCursor)
        
        query = """
            SELECT 
                mitra_id,
                mitra_name,
                survey_type,
                survey_score,
                jumlah_survey,
                exp_norm,
                weighted_score,
                optimized_score,
                final_rank_score,
                created_at
            FROM recommendation_perusahaan
            WHERE final_rank_score >= %s
            ORDER BY final_rank_score DESC
        """
        
        params = [min_score]
        if limit:
            query += " LIMIT %s"
            params.append(limit)
        
        cursor.execute(query, params)
        results = cursor.fetchall()
        
        cursor.close()
        conn.close()
        
        data = []
        for row in results:
            row_dict = dict(row)
            for key in row_dict:
                if hasattr(row_dict[key], 'real'):
                    row_dict[key] = float(row_dict[key])
            data.append(row_dict)
        
        return {
            "status": "success",
            "survey_type": "Perusahaan",
            "count": len(data),
            "description": "ML rating + Historical performance + Experience combined",
            "data": data
        }
    
    except Exception as e:
        return {
            "status": "error",
            "detail": str(e)
        }
