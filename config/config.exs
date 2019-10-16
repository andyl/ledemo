import Config

key = "K5kQ1i4z9p1Pcj1R4TtRoeQMIwPraxKYk90re8GjRzSbgrMUZYjjFOv5kFyjBuA2"

config :ledemo, LedemoWeb.Endpoint,
  url: [host: "localhost"],
  secret_key_base: key,
  render_errors: [view: LedemoWeb.ErrorView, accepts: ~w(html json)],
  pubsub: [name: Ledemo.PubSub, adapter: Phoenix.PubSub.PG2]

config :ledemo, LedemoWeb.Endpoint,
  live_view: [ signing_salt: "SUPERSECRETKEY" ]

config :logger, :console,
  format: "$time $metadata[$level] $message\n",
  metadata: [:request_id]

config :phoenix, :json_library, Jason

import_config "#{Mix.env()}.exs"
