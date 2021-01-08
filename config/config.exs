# This file is responsible for configuring your application
# and its dependencies with the aid of the Mix.Config module.
#
# This configuration file is loaded before any dependency and
# is restricted to this project.

# General application configuration
use Mix.Config

config :maki,
  ecto_repos: [Maki.Repo],
  generators: [binary_id: true]

# Configures the endpoint
config :maki, MakiWeb.Endpoint,
  url: [host: "localhost"],
  secret_key_base: "Ll2L3c2c0CO35F7GIHTw/q4h4tWvMAWILw+YEhAs4i5ZHszaXUFzWvOjTKxTnqz4",
  render_errors: [view: MakiWeb.ErrorView, accepts: ~w(html json), layout: false],
  pubsub_server: Maki.PubSub,
  live_view: [signing_salt: "1gkWbyL8"]

# Configures Elixir's Logger
config :logger, :console,
  format: "$time $metadata[$level] $message\n",
  metadata: [:request_id]

# Use Jason for JSON parsing in Phoenix
config :phoenix, :json_library, Jason

# Import environment specific config. This must remain at the bottom
# of this file so it overrides the configuration defined above.
import_config "#{Mix.env()}.exs"
