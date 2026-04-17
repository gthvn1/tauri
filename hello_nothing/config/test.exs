import Config

# We don't run a server during test. If one is required,
# you can enable the server option below.
config :hello_nothing, HelloNothingWeb.Endpoint,
  http: [ip: {127, 0, 0, 1}, port: 4002],
  secret_key_base: "Pju0bEtpiF7U4c7UqyBzfN0xLIJob4gD7XvFDISN/VGBvWus1ztsQe0IuSkm6J0y",
  server: false

# In test we don't send emails
config :hello_nothing, HelloNothing.Mailer, adapter: Swoosh.Adapters.Test

# Disable swoosh api client as it is only required for production adapters
config :swoosh, :api_client, false

# Print only warnings and errors during test
config :logger, level: :warning

# Initialize plugs at runtime for faster test compilation
config :phoenix, :plug_init_mode, :runtime

# Sort query params output of verified routes for robust url comparisons
config :phoenix,
  sort_verified_routes_query_params: true
