defmodule GhostVault.DefaultLayout do
  use Hologram.Component

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
        <slot />
      </body>
    </html>
    """
  end
end
