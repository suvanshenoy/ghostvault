defmodule GhostVaultWeb.PageController do
  use GhostVaultWeb, :controller

  def home(conn, _params) do
    render(conn, :home)
  end
end
