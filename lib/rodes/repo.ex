defmodule Rodes.Repo do
  use Ecto.Repo,
    otp_app: :rodes,
    adapter: Tds.Ecto
end
