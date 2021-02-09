# This file is responsible for configuring your application
# and its dependencies with the aid of the Mix.Config module.
#
# This configuration file is loaded before any dependency and
# is restricted to this project.

# General application configuration
use Mix.Config

config :code_camp,
  ecto_repos: [CodeCamp.Repo]

# Configures the endpoint
config :code_camp, CodeCampWeb.Endpoint,
  url: [host: "localhost"],
  secret_key_base: "1F4RoX3l5wEyx1sJ+tLjXdupzjwX7CCXhD9gvYzTTYiKMANLyDiKZWmzHRtlAfcf",
  render_errors: [view: CodeCampWeb.ErrorView, accepts: ~w(html json), layout: false],
  pubsub_server: CodeCamp.PubSub,
  live_view: [signing_salt: "+jU2MFq2"]

# Configures Elixir's Logger
config :logger, :console,
  format: "$time $metadata[$level] $message\n",
  metadata: [:request_id]

# Use Jason for JSON parsing in Phoenix
config :phoenix, :json_library, Jason

config :code_camp, CodeCamp.Mailer,
  adapter: Bamboo.MandrillAdapter,
  api_key: "my_api_key"

config :kaffy,
   otp_app: :code_camp,
   ecto_repo: CodeCamp.Repo,
   router: CodeCampWeb.Router

# Import environment specific config. This must remain at the bottom
# of this file so it overrides the configuration defined above.
import_config "#{Mix.env()}.exs"
