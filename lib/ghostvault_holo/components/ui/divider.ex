defmodule GhostVault.Components.UI.Divider do
  use Hologram.Component

  prop :class, :string, default: "w-48 min-w-180 l h-1 my-4 bg-transparent opacity-25"

  def template do
    ~HOLO"""
      <hr class={@class}/>
    """
  end
end
