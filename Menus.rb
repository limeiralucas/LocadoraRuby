def leaseMenu()
	system "clear"
	@itens.each do |item|
		puts "#{item.id}: #{item.name}"
	end
	puts "\nItem Number: "
	lease_num = gets.chomp()
end

def itemMenu()
	system "clear"
	@itens.each do |item|
		puts "#{item.id}: #{item.name}"
	end
	puts "\n1: Show Item"
	puts "2: Lease "

	option = gets.chomp()

	case option.to_i
	when 1 then
		puts "Item Number: "
		item_num = gets.chomp()
	when 2 then
		leaseMenu()
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