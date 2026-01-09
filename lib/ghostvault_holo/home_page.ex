defmodule GhostVault.HomePage do
  use Hologram.Page

  alias GhostVault.Components.UI.Card

  route "/"

  layout GhostVault.DefaultLayout

  def template do
    ~HOLO"""
    <div class="py-34 max-w-2xl mx-auto">
      <div class="text-center">
        <h1 class="text-4xl">Welcome back</h1>
        <p class="mt-2">Your Secure Digital Vault.</p>
      </div>
      <div class="flex flex-row justify-center space-x-4 mt-7">
        <Card icon="passwords.svg">Passwords</Card>
        <Card icon="emails.svg">Emails</Card>
        <Card icon="files.svg">Files</Card>
        <Card icon="notes.svg">Secure Notes</Card>
      </div>
      <div class="flex justify-center space-x-4 mt-4">
        <Card>Recent Items</Card>
        <Card>Security Check</Card>
      </div>
    </div>
    """
  end
end
