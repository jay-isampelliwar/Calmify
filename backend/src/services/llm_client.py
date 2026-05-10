from collections.abc import Iterator
from enum import Enum
from typing import Any

from langchain_core.language_models.chat_models import BaseChatModel
from langchain_core.messages import BaseMessage
from langchain_core.tools.base import BaseTool
from langchain_openai import ChatOpenAI
from langchain_anthropic import ChatAnthropic


class LLMProvider(str, Enum):
    """Which chat model backend to use (set API key for the active provider)."""

    OPENAI = "openai"
    ANTHROPIC = "anthropic"
    GEMINI = "gemini"


# Switch provider here (OPENAI_API_KEY, ANTHROPIC_API_KEY, or GOOGLE_API_KEY).
ACTIVE_LLM_PROVIDER: LLMProvider = LLMProvider.ANTHROPIC

_DEFAULT_OPENAI_MODEL = "gpt-4o-mini"
_DEFAULT_ANTHROPIC_MODEL = "claude-haiku-4-5"
_DEFAULT_GEMINI_MODEL = "gemini-2.5-flash"

_PROVIDER_MODEL_MAP: dict[LLMProvider, str] = {
    LLMProvider.OPENAI: _DEFAULT_OPENAI_MODEL,
    LLMProvider.ANTHROPIC: _DEFAULT_ANTHROPIC_MODEL,
    LLMProvider.GEMINI: _DEFAULT_GEMINI_MODEL,
}


class LLMClient:
    def __init__(self, model: str | None = None) -> None:
        self._model_name = model or _PROVIDER_MODEL_MAP[ACTIVE_LLM_PROVIDER]
        match ACTIVE_LLM_PROVIDER:
            case LLMProvider.ANTHROPIC:
                self.llm: BaseChatModel = ChatAnthropic(
                    model=self._model_name,
                    temperature=0,
                )
            case LLMProvider.OPENAI:
                self.llm = ChatOpenAI(
                    model=self._model_name,
                    temperature=0,
                )
            case LLMProvider.GEMINI:
                self.llm = ChatOpenAI(
                    model=self._model_name,
                    temperature=0,
                )

    def with_structured_output(self, schema: Any, **kwargs: Any):
        return self.llm.with_structured_output(schema, **kwargs)

    def generate_response(self, *, prompt: str) -> str:
        return self.llm.invoke(prompt)

    def stream_chat(self, messages: list[BaseMessage]) -> Iterator[BaseMessage]:
        yield from self.llm.stream(messages)

    def stream_chat_with_tools(self, messages: list[BaseMessage], tools: list[BaseTool]) -> Iterator[BaseMessage]:
        llm_with_tools = self.llm.bind_tools(tools)
        yield from llm_with_tools.stream(messages)
