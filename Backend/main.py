from dotenv import load_dotenv
from fastapi import FastAPI
from app.api.v1.router import router

load_dotenv()


app = FastAPI(title="Calmify API")


app = FastAPI(
    title="Streaming Chat API",
    version="1.0.0"
)

app.include_router(
    router,
    prefix="/api",
    tags=["Chat"]
)


@app.get("/")
async def health():
    return {"status": "ok"}

