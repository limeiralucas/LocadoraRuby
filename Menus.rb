def leaseMenu()
	system "clear"
	@leases.each do |id, lease|
		puts "#{id}: #{lease.name}"
	end
	puts "\nItem Number: "
	lease_num = gets.chomp()
	puts @leases[lease_num.to_i].to_s
end

def addItemMenu(){
	puts "1: Add Movie"
	puts "2: Add Game"
	option = gets.chomp()
	puts "Name: "
	name = gets.chomp
	puts "Year: "
	year = gets.chomp.to_i
	puts "Genre: "
	genre = gets.chomp

	case option.to_i
	when 1 then
		puts "Director: "
		director = gets.chomp
		puts "IMDB: "
		imdb_rating = gets.chomp.to_i
		@itens[@item_count+1] = new Movie(@item_count+1, name, year, genre, director, imdb_rating)
		@item_count += 1
	end
		
}

def itemMenu()
	system "clear"
	@itens.each do |id, item|
		puts "#{id}: #{item.name}"
	end
	puts "\n1: Show Item"
	puts "2: Lease "
	puts "3: Add Item"

	option = gets.chomp()

	case option.to_i
	when 1 then
		puts "Item Number: "
		item_num = gets.chomp()
		puts @itens[item_num.to_i].to_s
		gets
	when 2 then
		leaseMenu()
	when 3 then
		addItemMenu()
	else
		puts "Invalid Option"
	end
end

def mainMenu()
	system "clear"
	puts "----LocadoraRuby----"
	puts "1: Itens"
	puts "2: Leases"
	puts "0: Exit"
	option = gets.chomp()

	case option.to_i
	when 1 then
		itemMenu()
	when 2 then
		leaseMenu()
	when 0 then
		@quit = true
	else
		puts "Invalid Option"
	end
end