require 'passenger_holder'

class Passengerstorer; include PassengerHolder; end

describe PassengerHolder do 

	let(:holder) {Passengerstorer.new}
	let(:passenger) {double :passenger}

	it 'should accept a passenger' do
		expect(holder.passenger_count).to eq(0)
		holder.board_passenger(passenger)
		expect(holder.passenger_count).to eq(1)
	end
	
end