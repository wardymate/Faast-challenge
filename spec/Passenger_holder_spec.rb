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
	
	it 'should release a passenger' do
		holder.board_passenger(passenger)
		holder.release_passenger(passenger)
		expect(holder.passenger_count).to eq(0)
	end

	it 'should know when it is full' do
		expect(holder).not_to be_full
		40.times{holder.board_passenger(passenger)}
		expect(holder).to be_full
	end

end