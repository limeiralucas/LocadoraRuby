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
end