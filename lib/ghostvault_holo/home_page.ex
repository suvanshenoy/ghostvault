defmodule GhostVault.HomePage do
  use Hologram.Page

  route "/"

  layout GhostVault.DefaultLayout

  def template do
    ~HOLO"""
    <h1 class="text-2xl text-red-500">Hello from Hologram!</h1>
    """
  end
end
