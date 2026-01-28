from operator import add
from typing import TypedDict, Annotated

from langchain_openai import ChatOpenAI
from langgraph.checkpoint.memory import InMemorySaver
from langgraph.constants import START, END
from langgraph.graph import StateGraph, MessagesState

from app.ai.constants.model import OPENAI_GPT_4O_MINI


class ChatAgent:

    def __init__(self):
        self.llm = ChatOpenAI(
            model = OPENAI_GPT_4O_MINI,
            temperature=0.7,
            streaming=True
        )

        self.graph = self.build_graph()

    async def chat(self, state: MessagesState):

        messages = state["messages"]

        async for chuck in self.llm.astream(messages):
            if chuck.content:
                yield  {
                    messages: [chuck.content],
                }

    def build_graph(self):

        graph_builder = StateGraph(MessagesState)

        graph_builder.add_node("chat", self.chat)

        graph_builder.add_edge(START, "chat")
        graph_builder.add_edge( "chat", END)


        memory = InMemorySaver()
        graph = graph_builder.compile(checkpointer=memory)

        return graph
