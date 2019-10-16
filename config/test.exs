import Config

config :ledemo, LedemoWeb.Endpoint,
  http: [port: 4002],
  server: false

config :logger, level: :warn
