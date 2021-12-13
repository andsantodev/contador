import Config

# We don't run a server during test. If one is required,
# you can enable the server option below.
config :contador, ContadorWeb.Endpoint,
  http: [ip: {127, 0, 0, 1}, port: 4002],
  secret_key_base: "R1mBMdY7a9Q4/NyC/SV6Ax978RHmJJOCUrKSGKHQGrL/HPwKAmBwo9KRj4hIKt1K",
  server: false

# In test we don't send emails.
config :contador, Contador.Mailer,
  adapter: Swoosh.Adapters.Test

# Print only warnings and errors during test
config :logger, level: :warn

# Initialize plugs at runtime for faster test compilation
config :phoenix, :plug_init_mode, :runtime
