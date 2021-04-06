# This file is responsible for configuring your application
# and its dependencies with the aid of the Mix.Config module.
#
# This configuration file is loaded before any dependency and
# is restricted to this project.

# General application configuration
use Mix.Config

config :blog_api,
  ecto_repos: [BlogApi.Repo],
  generators: [binary_id: true]

# Configures the endpoint
config :blog_api, BlogApiWeb.Endpoint,
  url: [host: "localhost"],
  secret_key_base: "LgQjQOcfsFRk5GVUQXZtIrpll0479hKS2e0wnjvsTrJSYjqE+fEKuGAZBxb2Kvtl",
  render_errors: [view: BlogApiWeb.ErrorView, accepts: ~w(json), layout: false],
  pubsub_server: BlogApi.PubSub,
  live_view: [signing_salt: "n+xmWYdD"]

# Configures Elixir's Logger
config :logger, :console,
  format: "$time $metadata[$level] $message\n",
  metadata: [:request_id]

# Use Jason for JSON parsing in Phoenix
config :phoenix, :json_library, Jason

# Import environment specific config. This must remain at the bottom
# of this file so it overrides the configuration defined above.
import_config "#{Mix.env()}.exs"
