# This file is responsible for configuring your application
# and its dependencies with the aid of the Mix.Config module.
#
# This configuration file is loaded before any dependency and
# is restricted to this project.
use Mix.Config

# General application configuration
config :rodes,
  ecto_repos: [Rodes.Repo]

# Configures the endpoint
config :rodes, Rodes.Endpoint,
  url: [host: "localhost"],
  secret_key_base: "5x0hkYzDkUKVhESzeybQ42+X2xbTaybvquRKq5B+f4XFuKcnZ1pZIRGMqXZ09NPp",
  render_errors: [view: Rodes.ErrorView, accepts: ~w(html json)],
  pubsub: [name: Rodes.PubSub,
           adapter: Phoenix.PubSub.PG2]

# Configures Elixir's Logger
config :logger, :console,
  format: "$time $metadata[$level] $message\n",
  metadata: [:request_id]

# Import environment specific config. This must remain at the bottom
# of this file so it overrides the configuration defined above.
import_config "#{Mix.env}.exs"
