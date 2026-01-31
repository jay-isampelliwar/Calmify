from fastapi import Request

from app.ai.agents.chat_agent import ChatAgent


async def get_chat_agent(request: Request) -> ChatAgent:
    return request.app.state.chat_agent

