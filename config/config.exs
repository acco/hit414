# This file is responsible for configuring your application
# and its dependencies with the aid of the Mix.Config module.
#
# This configuration file is loaded before any dependency and
# is restricted to this project.

# General application configuration
use Mix.Config

config :hit414,
  ecto_repos: [Hit414.Repo]

# Configures the endpoint
config :hit414, Hit414Web.Endpoint,
  url: [host: "localhost"],
  secret_key_base: "On+LSdprBB+B8by8NPLn/r1ZmY7Ktp8U1qWisHHPzlJ4y8NeFeaY8XStdj+h6gn4",
  render_errors: [view: Hit414Web.ErrorView, accepts: ~w(html json), layout: false],
  pubsub_server: Hit414.PubSub,
  live_view: [signing_salt: "4fe4Q4QT"]

# Configures Elixir's Logger
config :logger, :console,
  format: "$time $metadata[$level] $message\n",
  metadata: [:request_id]

# Use Jason for JSON parsing in Phoenix
config :phoenix, :json_library, Jason

# Import environment specific config. This must remain at the bottom
# of this file so it overrides the configuration defined above.
import_config "#{Mix.env()}.exs"
