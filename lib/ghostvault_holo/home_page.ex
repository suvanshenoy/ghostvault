defmodule GhostVault.HomePage do
  use Hologram.Page

  route "/"

  layout GhostVault.DefaultLayout

  def template do
    ~HOLO"""
    <div class="py-34 max-w-2xl mx-auto">
      <div class="text-center">
        <h1 class="text-4xl">Welcome back</h1>
        <p class="mt-2">Your Secure Digital Vault.</p>
      </div>
    </div>
    """
  end
end
