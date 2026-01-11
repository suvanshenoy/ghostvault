defmodule GhostVault.HomePage do
  use Hologram.Page

  alias GhostVault.Components.UI.Card
  alias GhostVault.Components.UI.Divider

  route "/"

  layout GhostVault.DefaultLayout

  def template do
    ~HOLO"""
    <div class="py-34 max-w-2xl mx-auto">
      <div class="text-center">
        <h1 class="text-4xl">Welcome back</h1>
        <p class="mt-2">Your Secure Digital Vault.</p>
      </div>
      <div class="flex flex-row justify-center space-x-4 gap-3 mt-7 relative sm:left-1">
        <Card icon="passwords.svg">Passwords</Card>
        <Card icon="emails.svg">Emails</Card>
        <Card icon="files.svg">Files</Card>
        <Card icon="notes.svg">Secure Notes</Card>
      </div>
      <div class="flex flex-col lg:flex-row lg:justify-center lg:space-x-1 gap-2 mt-4 absolute sm:right-1 md:right-12 lg:left-15">
        <Card class="bg-[#202c3d] sm:min-w-209 md:min-w-210 lg:min-w-200 h-80 rounded p-10">
         <p>Recent Items</p>
         <Divider/>
         <p>Bank Account</p>
         <Divider/>
         <p>Project Report</p>
         <Divider/>
         <p>Work Email</p>
        </Card>
        <Card class="bg-[#202c3d] sm:min-w-209 md:min-w-210 lg:min-w-200 h-80 rounded p-10">
          <p>Security Check</p>
          <Divider/>
          <p>Vault Security</p>
          <Divider/>
          <p>Weak Passwords</p>
          <Divider/>
          <p>Compromised Accounts</p>
        </Card>
      </div>
    </div>
    """
  end
end
