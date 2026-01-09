defmodule GhostVault.DefaultLayout do
  use Hologram.Component

  alias GhostVault.Components.Navbar

  @impl true
  def init(_params, component, _server) do
    navlinks = [
      "Dashboard",
      "Passwords",
      "Emails",
      "Files",
      "Notes"
    ]

    put_state(component, :navlinks, navlinks)
  end

  @impl true
  def template do
    ~HOLO"""
    <!DOCTYPE html>
    <html>
      <head>
        <title>GhostVault</title>
        <Hologram.UI.Runtime />
        <link rel="stylesheet" href="/assets/css/app.css"/>
      </head>
      <body>
        <Navbar navlinks={@navlinks}/>
        <div>
          <slot/>
        </div>
      </body>
    </html>
    """
  end
end
