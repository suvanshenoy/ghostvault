defmodule GhostVault.Components.Navbar do
  use Hologram.Component

  alias Hologram.UI.Link
  alias GhostVault.HomePage

  prop :navlinks, :array,
    default: [
      "Dashboard",
      "Passwords",
      "Emails",
      "Files",
      "Notes"
    ]

  def template do
    ~HOLO"""
    <div class="top-0 start-0 fixed bg-[#1e2733] text-white w-full border-b">
      <div class="flex justify-between p-4 items-center">
        <Link to={HomePage} class="flex gap-2">
          <img src="/images/ghost.svg" alt="GhostVault Logo" class="h-8"/>
          <span class="text-2xl font-semibold">GhostVault</span>
        </Link>
        <div class="items-center justfy-between mx-auto">
            <ul class="flex flex-row space-x-8 text-gray-200">
            {%for navlink <- @navlinks}
              <li>
                <a href="#" class="py-2 px-3  hover:border-b-4 hover:border-blue-400">{navlink}</a>
              </li>
             {/for}
            </ul>
        </div>
      </div>
    </div>
    """
  end
end
