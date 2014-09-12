require_relative "Item"

class Game < Item
	attr_reader :genre, :developer, :platform, :publisher, :avaliable
	def initialize(id, name, year, genre, developer, platform, publisher)
		@developer = developer
		@platform = platform
		@publisher = publisher
		super(id, name, year, genre)
	end
	def to_s()
		"Game ##{id}\n
		Name: #{name}\n
		Year: #{year}\n
		Genre: #{genre}\n
		Developer: #{developer}\n
		Platform: #{platform}\n
		Publisher: #{publisher}\n
		Avaliable: #{avaliable ? "Yes" : "No" }\n"
	end
end