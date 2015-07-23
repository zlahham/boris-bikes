require_relative 'bike'

class DockingStation
  attr_accessor :bikes

  def initialize
    @bikes = []
  end

  def release_bike
    fail 'No bikes available' if @bikes.empty?
    @bikes.pop
  end

  def dock bike
    fail 'Dock is full' if is_full?
    @bikes.push(bike)
  end

  def is_full?
    @bikes.length == 1
  end

end
