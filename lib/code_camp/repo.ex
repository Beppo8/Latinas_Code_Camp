defmodule CodeCamp.Repo do
  use Ecto.Repo,
    otp_app: :code_camp,
    adapter: Ecto.Adapters.Postgres
end
