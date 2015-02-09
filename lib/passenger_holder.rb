module PassengerHolder

	def passengers
		@passengers ||= []
	end


	def passenger_count
		passengers.length
	end

	def board_passenger(passenger)
		passengers << passenger
	end


end