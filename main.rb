require_relative "Menus"
require_relative "Game"

@itens = []
@users = {}
@quit = false

require_relative "bootstrap"

while !@quit
	mainMenu()
end