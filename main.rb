require_relative "Menus"
require_relative "Game"

@item_count = 0
@itens = {}
@leases = {}
@users = {}
@quit = false

require_relative "bootstrap"

while !@quit
	mainMenu()
end