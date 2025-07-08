import Config

# We don't run a server during test. If one is required,
# you can enable the server option below.
config :phx_playground, PhxPlaygroundWeb.Endpoint,
  http: [ip: {127, 0, 0, 1}, port: 4002],
  secret_key_base: "KSQ8KnoJaRJOTmne3lHnlSXeaMwDwMnU/4S4LLqCEZeMF21sdZIkIHywTqwA1fqR",
  server: false

# In test we don't send emails
config :phx_playground, PhxPlayground.Mailer, adapter: Swoosh.Adapters.Test

# Disable swoosh api client as it is only required for production adapters
config :swoosh, :api_client, false

# Print only warnings and errors during test
config :logger, level: :warning

# Initialize plugs at runtime for faster test compilation
config :phoenix, :plug_init_mode, :runtime

# Enable helpful, but potentially expensive runtime checks
config :phoenix_live_view,
  enable_expensive_runtime_checks: true
