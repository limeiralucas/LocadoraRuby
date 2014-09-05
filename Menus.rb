def leaseMenu()
	system "clear"
	@leases.each do |id, lease|
		puts "#{id}: #{lease.name}"
	end
	puts "\nItem Number: "
	lease_num = gets.chomp()
	puts @leases[lease_num.to_i].to_s
end

def itemMenu()
	system "clear"
	@itens.each do |id, item|
		puts "#{id}: #{item.name}"
	end
	puts "\n1: Show Item"
	puts "2: Lease "

	option = gets.chomp()

	case option.to_i
	when 1 then
		puts "Item Number: "
		item_num = gets.chomp()
		puts @itens[item_num.to_i].to_s
		gets
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