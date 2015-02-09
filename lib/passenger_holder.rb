module PassengerHolder

	DEFAULT_CAPACITY = 40

	def passengers
		@passengers ||= []
	end

	def capacity
	@capacity ||= DEFAULT_CAPACITY
	end

	def passenger_count
		passengers.length
	end

	def board_passenger(passenger)
		passengers << passenger
	end

	def release_passenger(passenger)
		passengers.delete(passenger)
	end

	def full?
		passenger_count == capacity
	end

end