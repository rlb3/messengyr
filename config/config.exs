# This file is responsible for configuring your application
# and its dependencies with the aid of the Mix.Config module.
#
# This configuration file is loaded before any dependency and
# is restricted to this project.
use Mix.Config

# General application configuration
config :messengyr,
  ecto_repos: [Messengyr.Repo]

# Configures the endpoint
config :messengyr, Messengyr.Web.Endpoint,
  url: [host: "localhost"],
  secret_key_base: "eJ/SFAbpXr4EKNiG7+QJI0qGVjKt2pxr9bAMGQoBc2dr4Lwrm0iFbPOouyBoOK2E",
  render_errors: [view: Messengyr.Web.ErrorView, accepts: ~w(html json)],
  pubsub: [name: Messengyr.PubSub,
           adapter: Phoenix.PubSub.PG2]

# Configures Elixir's Logger
config :logger, :console,
  format: "$time $metadata[$level] $message\n",
  metadata: [:request_id]

# Import environment specific config. This must remain at the bottom
# of this file so it overrides the configuration defined above.
import_config "#{Mix.env}.exs"

config :guardian, Guardian,
  issuer: "Messengyr",
  ttl: { 30, :days },
  allowed_drift: 2000,
  secret_key: "7IDPVGCyMAEGX/wwsZXfW11wJps7uspDJixWxPrY3WH2sLBsrWfIhFjlPb4oJG9R",
  serializer: Messengyr.Accounts.GuardianSerializer
