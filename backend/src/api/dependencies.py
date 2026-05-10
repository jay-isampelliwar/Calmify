from functools import lru_cache

from src.ai.agent.graph_builder import build_graph


@lru_cache(maxsize=1)
def get_graph():
    return build_graph()
