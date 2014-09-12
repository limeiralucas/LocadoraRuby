def leaseMenu()
	system "clear"
	@leases.each do |id, lease|
		puts "#{id}: #{@itens[lease.item_id.to_i].name}"
	end
	puts "\nItem Number: "
	lease_num = gets.chomp
	puts @leases[lease_num.to_i].to_s
end

def leaseItemMenu()
	puts "\nItem Number: "
	item_num = gets.chomp
	if @itens[item_num.to_i] == nil
		puts "Item not found"
		gets
	else
		puts "User ID: "
		user_id = gets.chomp
		if(@users[user_id.to_i] == nil)
			puts "User not found"
			gets
		else
			@itens[item_num.to_i].lease()
			@leases[@leases_count+1] = Lease.new(@leases_count+1, user_id.to_i, item_num.to_i)
		end
	end
end

def removeItemMenu()
	puts "Item number: "
	item_num = gets.chomp
	if @itens[item_num.to_i] != nil
		puts "Delete #{@itens[item_num.to_i].name} ? (1: Y, 2: N)"
		option = gets.chomp
		case option.to_i
		when 1 then
			@itens.delete(item_num.to_i)
			puts "Item deleted"
			gets
		end
	else
		puts "Item not found"
		gets
	end
end

def addItemMenu()
	option = 0
	puts "1: Add Movie"
	puts "2: Add Game"
	option = gets.chomp()
	if(option.to_i != 1 && option.to_i != 2)
		return
	end
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
		@itens[@item_count+1] = Movie.new(@item_count+1, name, year, genre, director, imdb_rating)
		@item_count += 1
	when 2 then
		puts "Developer: "
		developer = gets.chomp
		puts "Platform: "
		platform = gets.chomp
		puts "Publisher: "
		publisher = gets.chomp
		@itens[@item_count+1] = Game.new(@item_count+1, name, year, genre, developer, platform, publisher)
		@item_count += 1
	end
end

def itemMenu()
	system "clear"
	@itens.each do |id, item|
		puts "#{id}: #{item.name}"
	end
	puts "\n1: Show Item"
	puts "2: Lease "
	puts "3: Add Item"
	puts "4: Remove Item"

	option = gets.chomp()

	case option.to_i
	when 1 then
		puts "Item Number: "
		item_num = gets.chomp()
		puts @itens[item_num.to_i].to_s
		gets
	when 2 then
		leaseItemMenu()
	when 3 then
		addItemMenu()
	when 4 then
		removeItemMenu()
	else
		puts "Invalid Option"
		gets
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