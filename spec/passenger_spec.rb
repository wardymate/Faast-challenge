require 'passenger'

describe Passenger do
	
	let(:passenger)	{Passenger.new}
	let(:coach) {double :coach}
	let(:station) {double :station}

	it 'should be able to board a coach' do
		expect(passenger.board!(coach)).to eq true
	end

	it 'should be able to exit a coach' do
		expect(passenger.unboard!(coach)).to eq true
	end

	it 'should be able to enter a station' do
		expect(passenger.enter_station!(station)).to eq true
	end

	it 'should be able to leave a station' do
		expect(passenger.exit_station!(station)).to eq true
	end

end