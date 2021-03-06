# This file is responsible for configuring your application
# and its dependencies with the aid of the Mix.Config module.
#
# This configuration file is loaded before any dependency and
# is restricted to this project.

# General application configuration
use Mix.Config

config :geo_tasks,
  ecto_repos: [GeoTasks.Repo]

# Configures the endpoint
config :geo_tasks, GeoTasksWeb.Endpoint,
  url: [host: "localhost"],
  secret_key_base: "Hd7HvqxlA3+geI40MQ35tlHegOjnISunfM7t28ESpiSzIBuk4JsiNB1Wwcbvjf+D",
  render_errors: [view: GeoTasksWeb.ErrorView, accepts: ~w(json), layout: false],
  pubsub_server: GeoTasks.PubSub,
  live_view: [signing_salt: "UCT7bdHk"]

# Configures Elixir's Logger
config :logger, :console,
  format: "$time $metadata[$level] $message\n",
  metadata: [:request_id]

# Use Jason for JSON parsing in Phoenix
config :phoenix, :json_library, Jason

# Import environment specific config. This must remain at the bottom
# of this file so it overrides the configuration defined above.
import_config "#{Mix.env()}.exs"
