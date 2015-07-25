require_relative 'bike'  # => true

class DockingStation

  attr_accessor :bikes, :capacity  # => nil
  DEFAULT_CAPACITY = 20            # => 20

  def initialize (capacity = DEFAULT_CAPACITY)
    @bikes = []
    @capacity = capacity
    #@good_bikes = []
  end

  def release_bike
    if empty_1?
      fail 'No bikes available'
    end
    good_bikes = []
    @bikes.each do |a|
      if a.working? == true
        good_bikes << a
      end
    end
    if good_bikes.empty?
      fail "Bike is broken"
    else
      good_bikes = @bikes.select{|bike| bike.broken? == false}
      released_bike = good_bikes.pop
      @bikes.delete(released_bike)
      released_bike
    end
  end

  def dock bike
    if full?
      fail 'Dock is full'
    end
    @bikes.push(bike)
  end

  private  # => DockingStation

  def full?
    @bikes.length >= @capacity
  end

  def empty_1?
    @bikes.empty?
  end

end
