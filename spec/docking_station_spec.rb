require 'docking_station'
require 'bike'

describe DockingStation do 
	it 'release bike' do
		is_expected.to respond_to(:release_bike)
	end

	it 'should be a new bike' do
		expect(DockingStation.new.release_bike) == Bike.new
	end
end
