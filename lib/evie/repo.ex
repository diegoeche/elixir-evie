defmodule Evie.Repo do
  use Ecto.Repo,
    otp_app: :evie,
    adapter: Ecto.Adapters.Postgres
end
