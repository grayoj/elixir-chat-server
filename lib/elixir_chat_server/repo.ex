defmodule ElixirChatServer.Repo do
  use Ecto.Repo,
    otp_app: :elixir_chat_server,
    adapter: Ecto.Adapters.Postgres
end
