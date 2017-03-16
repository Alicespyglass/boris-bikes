require_relative 'bike'

class DockingStation
attr_reader :bike

# Use an initialize function to set the initial value of this attribute to an empty array.
  def initialize
    @bikes = []
  end

  def release_bike
    fail 'No bikes available' if @bikes.empty?
    @bikes.pop
  end

# Rename your attribute @bike to reflect that it will store more than one Bike instance.

  def dock(bike)
    fail 'Docking Station Full!' if @bikes.count >= 20
    @bikes.push(bike) # or <<
  end



=begin This is what attr_reader does - this is a getter
  def bike
    @bike
  end
=end

end
