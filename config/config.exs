# This file is responsible for configuring your application
# and its dependencies with the aid of the Mix.Config module.
#
# This configuration file is loaded before any dependency and
# is restricted to this project.
use Mix.Config

# General application configuration
config :elm_starter,
  ecto_repos: [ElmStarter.Repo]

# Configures the endpoint
config :elm_starter, ElmStarter.Endpoint,
  url: [host: "localhost"],
  secret_key_base: "y2lJVYMmIOX3Hrh/RXV5ORahuMndEfZYsI660JbsHZLtz+nY3y8pXp0O3nE1hU++",
  render_errors: [view: ElmStarter.ErrorView, accepts: ~w(html json)],
  pubsub: [name: ElmStarter.PubSub,
           adapter: Phoenix.PubSub.PG2]

# Configures Elixir's Logger
config :logger, :console,
  format: "$time $metadata[$level] $message\n",
  metadata: [:request_id]

# Import environment specific config. This must remain at the bottom
# of this file so it overrides the configuration defined above.
import_config "#{Mix.env}.exs"
