require 'docking_station.rb'

describe DockingStation do

  it 'docking station releases bike' do
    expect(subject).to respond_to :release_bike
  end

  it 'gets a bike that is working' do
    instance = Bike.new
    expect(instance).to be_working
  end

end
