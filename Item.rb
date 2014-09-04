class Item
	attr_reader :name, :id
	def initialize(id, name, year, genre, avaliable)
		@id = id
		@name = name
		@year = year
		@genre = genre
		@avaliable = avaliable
	end
end