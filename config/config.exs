# This file is responsible for configuring your application
# and its dependencies with the aid of the Mix.Config module.
#
# This configuration file is loaded before any dependency and
# is restricted to this project.

# General application configuration
use Mix.Config

config :address_converter,
  ecto_repos: [AddressConverter.Repo]

# Configures the endpoint
config :address_converter, AddressConverterWeb.Endpoint,
  url: [host: "localhost"],
  secret_key_base: "WoInIKY5nuLoSaeyXIL6Bz7NkTf21DInsftvpfNr1ES10kxc29v9SyvTBhe3vadv",
  render_errors: [view: AddressConverterWeb.ErrorView, accepts: ~w(html json), layout: false],
  pubsub_server: AddressConverter.PubSub,
  live_view: [signing_salt: "6UWrNAKQ"]

# Configures Elixir's Logger
config :logger, :console,
  format: "$time $metadata[$level] $message\n",
  metadata: [:request_id]

# Use Jason for JSON parsing in Phoenix
config :phoenix, :json_library, Jason

# Import environment specific config. This must remain at the bottom
# of this file so it overrides the configuration defined above.
import_config "#{Mix.env()}.exs"
