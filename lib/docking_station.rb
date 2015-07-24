require_relative 'bike'

class DockingStation

  attr_accessor :bikes, :capacity
  DEFAULT_CAPACITY = 20

  def initialize (capacity = DEFAULT_CAPACITY)
    @bikes = []
    @capacity = capacity
  end

  def release_bike
    if empty?
      fail 'No bikes available'
    end
    if @bikes.last.broken?
      fail 'Bike is broken'
    end
      @bikes.pop
  end

  def dock bike
    if full?
      fail 'Dock is full'
    end
    @bikes.push(bike)
  end

  private

  def full?
    @bikes.length >= @capacity
  end

  def empty?
    @bikes.empty?
  end

end
