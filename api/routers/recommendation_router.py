from fastapi import APIRouter
from services.database_service import fetch_table

router = APIRouter(prefix="/rekomendasi", tags=["Rekomendasi"])

@router.get("/rumah_tangga")
def rekom_rumah_tangga():
    data = fetch_table("recommendation_rumah_tangga", "final_rank_score")
    if isinstance(data, dict) and "error" in data:
        return {"status": "error", "detail": data["error"]}
    return {"survey_type": "Rumah Tangga", "count": len(data), "data": data}

@router.get("/perusahaan")
def rekom_perusahaan():
    data = fetch_table("recommendation_perusahaan", "final_rank_score")
    if isinstance(data, dict) and "error" in data:
        return {"status": "error", "detail": data["error"]}
    return {"survey_type": "Perusahaan", "count": len(data), "data": data}
