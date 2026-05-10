from src.services.llm_client import LLMClient

from .agent_state import AgentState

MAIN_NODE = "main"

_llm = LLMClient()


def main_node(state: AgentState) -> dict:
    response = _llm.llm.invoke(state["messages"])
    return {"messages": [response]}
