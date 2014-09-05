class Lease
	def initialize(id, timestamp, user_id, item_id, isPaid)
		@id = id
		@timestamp = Time.new
		@user_id = user_id
		@item_id = item_id
		@isPaid = false
	end

	def pay()
		@isPaid = true
	end

	def to_s()
		"##{id} User: #{user_id}:#{@users[user_id].name}\n
		Item: #{item_id}:#{@itens[item_id]}\n
		#{timestamp} | #{isPaid ? "Paid" : "Pending"}"
	end
end