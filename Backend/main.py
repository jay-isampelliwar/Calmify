from contextlib import asynccontextmanager

from dotenv import load_dotenv
from fastapi import FastAPI

from app.ai.agents.chat_agent import ChatAgent
from app.api.v1.router import router

load_dotenv()


@asynccontextmanager
async def lifespan(app: FastAPI):
    # Startup: Initialize ChatAgent and store in app state
    app.state.chat_agent = ChatAgent()
    yield
    # Shutdown: Cleanup (if needed in the future)
    # For now, no cleanup needed


app = FastAPI(
    title="Streaming Chat API",
    version="1.0.0",
    lifespan=lifespan
)

app.include_router(
    router,
    prefix="/api",
    tags=["Chat"]
)


@app.get("/")
async def health():
    return {"status": "ok"}

