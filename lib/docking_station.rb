require_relative 'bike'

class DockingStation

  attr_accessor :bikes, :capacity
  DEFAULT_CAPACITY = 20

  def initialize (capacity = DEFAULT_CAPACITY)
    @bikes = []
    @capacity = capacity
  end

  def release_bike
    fail 'No bikes available' if @bikes.empty?


    @bikes.pop
  end

  def dock bike
    fail 'Dock is full' if full?
    @bikes.push(bike)
  end

  def full?
    @bikes.length >= @capacity
  end

end
