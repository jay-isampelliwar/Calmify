from pydantic import BaseModel, Field


class ChatRequest(BaseModel):
    thread_id: str = Field(..., min_length=1, description="Conversation thread identifier")
    message: str = Field(..., min_length=1, description="Latest user message")
