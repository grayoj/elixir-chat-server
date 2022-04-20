# This file is responsible for configuring your application
# and its dependencies with the aid of the Mix.Config module.
#
# This configuration file is loaded before any dependency and
# is restricted to this project.

# General application configuration
use Mix.Config

config :elixir_chat_server,
  ecto_repos: [ElixirChatServer.Repo]

# Configures the endpoint
config :elixir_chat_server, ElixirChatServerWeb.Endpoint,
  url: [host: "localhost"],
  secret_key_base: "LlvuyUEzlCol23Ppy29y+yNnE3whbLfwxDkYeZzfMnTNjpULDB0g3FhEJnFRUr70",
  render_errors: [view: ElixirChatServerWeb.ErrorView, accepts: ~w(html json), layout: false],
  pubsub_server: ElixirChatServer.PubSub,
  live_view: [signing_salt: "ppUki9Qt"]

# Configures Elixir's Logger
config :logger, :console,
  format: "$time $metadata[$level] $message\n",
  metadata: [:request_id]

# Use Jason for JSON parsing in Phoenix
config :phoenix, :json_library, Jason

# Import environment specific config. This must remain at the bottom
# of this file so it overrides the configuration defined above.
import_config "#{Mix.env()}.exs"
