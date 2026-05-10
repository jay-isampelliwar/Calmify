from langgraph.checkpoint.memory import MemorySaver
from langgraph.graph import END, START, StateGraph

from .agent_state import AgentState
from .nodes import MAIN_NODE, main_node


def build_graph():
    graph_builder = StateGraph(AgentState)

    graph_builder.add_node(MAIN_NODE, main_node)

    graph_builder.add_edge(START, MAIN_NODE)
    graph_builder.add_edge(MAIN_NODE, END)

    return graph_builder.compile(checkpointer=MemorySaver())
