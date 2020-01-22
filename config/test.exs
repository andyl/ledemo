import Config

config :ple_demo, PleDemoWeb.Endpoint,
  http: [port: 4002],
  server: false

config :logger, level: :warn
