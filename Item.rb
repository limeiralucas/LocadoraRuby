class Item
	attr_reader :name, :id, :year, :genre, :avaliable
	def initialize(id, name, year, genre)
		@id = id
		@name = name
		@year = year
		@genre = genre
		@avaliable = true
	end
	def to_s()
		"Item ##{id}\n
		Name: #{name}\n
		Year: #{year}\n
		Avaliable: #{avaliable ? "Yes" : "No" }\n"
	end
end