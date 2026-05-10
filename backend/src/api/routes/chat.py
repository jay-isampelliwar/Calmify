import json
from typing import Annotated

from fastapi import APIRouter, Depends
from fastapi.responses import StreamingResponse
from langchain_core.messages import AIMessageChunk, HumanMessage

from src.api.dependencies import get_graph
from src.api.schemas import ChatRequest

router = APIRouter(prefix="/chat", tags=["chat"])


@router.post("/stream")
async def chat_stream(
    payload: ChatRequest,
    graph: Annotated[object, Depends(get_graph)],
) -> StreamingResponse:
    config = {"configurable": {"thread_id": payload.thread_id}}
    inputs = {"messages": [HumanMessage(content=payload.message)]}

    async def event_stream():
        async for chunk, _metadata in graph.astream(
            inputs,
            config=config,
            stream_mode="messages",
        ):
            if isinstance(chunk, AIMessageChunk) and chunk.content:
                yield f"data: {json.dumps({'content': chunk.content})}\n\n"
        yield "data: [DONE]\n\n"

    return StreamingResponse(event_stream(), media_type="text/event-stream")
