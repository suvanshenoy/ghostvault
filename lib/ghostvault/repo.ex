defmodule GhostVault.Repo do
  use Ecto.Repo,
    otp_app: :ghostvault,
    adapter: Ecto.Adapters.SQLite3
end
