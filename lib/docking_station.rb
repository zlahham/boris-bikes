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
    @bikes.push(bike)
  end
end
