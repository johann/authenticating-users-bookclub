# This file is responsible for configuring your application
# and its dependencies with the aid of the Mix.Config module.
#
# This configuration file is loaded before any dependency and
# is restricted to this project.
use Mix.Config

# General application configuration
config :moviepass,
  ecto_repos: [Moviepass.Repo]

# Configures the endpoint
config :moviepass, MoviepassWeb.Endpoint,
  url: [host: "localhost"],
  secret_key_base: "5RGM1nIScCmajTWl4mBSFccKaEX7tFeI2QoMIHJrnqfQnIVYXXDPW+C+eIDAHZ30",
  render_errors: [view: MoviepassWeb.ErrorView, accepts: ~w(html json)],
  pubsub: [name: Moviepass.PubSub,
           adapter: Phoenix.PubSub.PG2]

# Configures Elixir's Logger
config :logger, :console,
  format: "$time $metadata[$level] $message\n",
  metadata: [:request_id]

# Use Jason for JSON parsing in Phoenix and Ecto
config :phoenix, :json_library, Jason
config :ecto, :json_library, Jason


# Import environment specific config. This must remain at the bottom
# of this file so it overrides the configuration defined above.
import_config "#{Mix.env}.exs"
