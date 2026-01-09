defmodule GhostVault.Components.UI.Card do
  use Hologram.Component

  prop :icon, :string, default: ""
  prop :bg, :string, default: "#202c3d"
  prop :w, :any, default: "full"
  prop :h, :any, default: "500"

  def template do
    ~HOLO"""
    <div class="bg-[#202c3d] min-w-sm p-10 rounded">
     <div class="flex space-x-8">
      {%if icon_defined?(@icon)}
        <img src="/images/{@icon}" alt="Card Icon" class="h-16"/>
      {/if}
      <a href="#" class="text-white text-2xl my-auto">
        <slot/>
      </a>
     </div>
    </div>
    """
  end

  defp icon_defined?(icon) do
    if String.length(String.trim(icon)) == 0 do
      false
    else
      true
    end
  end
end
