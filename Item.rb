class Item
	attr_reader :name, :id
	def initialize(id, name, year, genre, avaliable)
		@id = id
		@name = name
		@year = year
		@genre = genre
		@avaliable = avaliable
	end
	def to_s()
		"Item ##{id}\n
		Name: #{name}\n
		Year: #{year}\n
		Avaliable: #{avaliable ? "Yes" : "No" }\n"
	end
end