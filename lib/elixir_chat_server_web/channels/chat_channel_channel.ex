defmodule ElixirChatServerWeb.ChatChannelChannel do
  use ElixirChatServerWeb, :channel

  alias Chats.Chats

  @impl true
  def join("chat_channel:lobby", payload, socket) do
      {:ok, socket}
  end

  # It is also common to receive messages from the client and
  # broadcast to everyone in the current topic (chat_channel:lobby).
  @impl true
  def handle_in("shout", payload, socket) do
    Chats.create_message(payload)
    broadcast socket, "shout", payload
    {:noreply, socket}
  end
end
