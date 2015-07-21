require 'docking_station.rb'

describe DockingStation do
  it 'docking station releases bike' do
    expect(subject).to respond_to :release_bike
  end
end
