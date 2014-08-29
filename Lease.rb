class Lease
	def initialize(id, timestamp, user_id, isPaid)
		@id = id
		@timestamp = Time.new
		@user_id = user_id
		@isPaid = false
	end

	def pay
		@isPaid = true
	end
end