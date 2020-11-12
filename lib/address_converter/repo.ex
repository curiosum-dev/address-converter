defmodule AddressConverter.Repo do
  use Ecto.Repo,
    otp_app: :address_converter,
    adapter: Ecto.Adapters.Postgres
end
