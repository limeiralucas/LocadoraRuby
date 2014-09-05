require_relative "Item"

class Game < Item
	def initialize(id, name, year, genre, avaliable, developer, platform, publisher)
		@developer = developer
		@platform = platform
		@publisher = publisher
		super(id, name, year, genre, avaliable)
	end
	def to_s()
		"Game ##{id}\n
		Name: #{name}\n
		Year: #{year}\n
		Developer: #{developer}\n
		Platform: #{platform}\n
		Publisher: #{publisher}\n
		Avaliable: #{avaliable ? "Yes" : "No" }\n"
	end
end