import Config

config :ple_demo, ple_demoWeb.Endpoint,
  http: [port: 4002],
  server: false

config :logger, level: :warn
