# This file is responsible for configuring your application
# and its dependencies with the aid of the Mix.Config module.
#
# This configuration file is loaded before any dependency and
# is restricted to this project.

# General application configuration
use Mix.Config

# Configures the endpoint
config :live_editable_demo, LiveEditableDemoWeb.Endpoint,
  url: [host: "localhost"],
  secret_key_base: "K5kQ1i4z9p1Pcj1R4TtRoeQMIwPraxKYk90re8GjRzSbgrMUZYjjFOv5kFyjBuA2",
  render_errors: [view: LiveEditableDemoWeb.ErrorView, accepts: ~w(html json)],
  pubsub: [name: LiveEditableDemo.PubSub, adapter: Phoenix.PubSub.PG2]

# LiveView Config
config :live_editable_demo, LiveEditableDemoWeb.Endpoint,
  live_view: [ signing_salt: "SUPERSECRETKEY" ]

# Configures Elixir's Logger
config :logger, :console,
  format: "$time $metadata[$level] $message\n",
  metadata: [:request_id]

# Use Jason for JSON parsing in Phoenix
config :phoenix, :json_library, Jason

# Import environment specific config. This must remain at the bottom
# of this file so it overrides the configuration defined above.
import_config "#{Mix.env()}.exs"
