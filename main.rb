@item_count = 0
@leases_count = 0
@itens = {}
@leases = {}
@users = {}
@quit = false

require_relative "Lease"
require_relative "Game"
require_relative "Movie"
require_relative "User"
require_relative "Menus"

require_relative "bootstrap"

while !@quit
	mainMenu()
end