require_relative "Item"

class Movie < Item
	def initialize(id, name, year, genre, avaliable, director, imdb_rating)
		@director = director
		@imdb_rating = imdb_rating
		super(id, name, year, genre, avaliable)
	end
end