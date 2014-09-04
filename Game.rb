require_relative "Item"

class Game < Item
	def initialize(id, name, year, genre, avaliable, developer, platform, publisher)
		@developer = developer
		@platform = platform
		@publisher = publisher
		super(id, name, year, genre, avaliable)
	end
end