from fastapi import APIRouter

from app.api.v1.routes import (chat)

router = APIRouter(prefix="/v1")

router.include_router(chat.router)
