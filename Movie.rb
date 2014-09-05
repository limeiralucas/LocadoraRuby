require_relative "Item"

class Movie < Item
	attr_reader :genre, :avaliable, :director, :avaliable, :director, :imdb_rating
	def initialize(id, name, year, genre, avaliable, director, imdb_rating)
		@director = director
		@imdb_rating = imdb_rating
		super(id, name, year, genre, avaliable)
	end
	def to_s()
		"Movie ##{id}\n
		Name: #{name}\n
		Genre: #{genre}\n
		Year: #{year}\n
		Director: #{director}\n
		IMDB: #{imdb_rating}\n
		Avaliable: #{avaliable ? "Yes" : "No"}\n"
	end
end