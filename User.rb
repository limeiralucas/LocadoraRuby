class User

	attr_reader :name, 

	def initialize(id, name, last_name, cpf, telephone, address)
		@id = id
		@name = name
		@last_name = name
		@cpf = cpf
		@telephone = telephone
		@address = address
	end

	def to_s()
		"User ##{id}\n
		Name: #{name.capitalize} #{last_name.capitalize}\n
		CPF: #{cpf}\n
		Telephone: #{telephone}\n
		Address: #{address}\n"
	end
end