require_relative 'bike'

class DockingStation
  def release_bike
    Bike.new # => Added this line to create a Bike class when we call
  end
end
