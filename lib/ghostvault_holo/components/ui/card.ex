defmodule GhostVault.Components.UI.Card do
  use Hologram.Component

  prop :icon, :string, default: ""

  prop :class, :string,
    default: "bg-[#202c3d]  min-w-10 md:min-w-50 lg:min-w-98 mx-auto p-10 rounded"

  def template do
    ~HOLO"""
    <div class={@class}>
     <div class="flex flex-col lg:flex-row space-x-8">
      {%if icon_defined?(@icon)}
        <img src="/images/{@icon}" alt="Card Icon" class="h-16 mx-auto lg:mx-4"/>
      {/if}
      <a href="#" class="text-white text-sm lg:text-2xl my-auto text-center">
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
