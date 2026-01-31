from typing import AsyncGenerator

from fastapi import APIRouter, Depends
from langchain_core.messages import HumanMessage
from starlette.responses import StreamingResponse

from app.ai.agents.chat_agent import ChatAgent
from app.core.dependencies import get_chat_agent

router = APIRouter(tags=["Chat"])


@router.get("/chat")
async def chat(
    query: str,
    chat_agent: ChatAgent = Depends(get_chat_agent)
):
    messages = [
        HumanMessage(content=query, name="Jay")
    ]

    async def token_stream() -> AsyncGenerator[str, None]:
        async for event in chat_agent.llm.astream_events(
            messages,
            version="v1"
        ):
            if event["event"] == "on_chat_model_stream":
                token = event["data"]["chunk"].content
                if token:
                    yield f"data: {token}\n\n"

    return StreamingResponse(
        token_stream(),
        media_type="text/event-stream"
    )