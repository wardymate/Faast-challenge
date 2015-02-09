require 'passenger'

describe Passenger do
	
	let(:coach) {double :coach}
	let(:passenger)	{Passenger.new}

	it 'should be able to board a coach' do
		expect(passenger.board!(coach)).to eq true
	end

end