require_relative "Menus"
require_relative "Game"

@itens = {}
@leases = {}
@users = {}
@quit = false

require_relative "bootstrap"

while !@quit
	mainMenu()
end