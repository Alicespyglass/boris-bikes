require_relative 'bike'

class DockingStation
attr_reader :bike
  DEFAULT_CAPACITY = 20

# Use an initialize function to set the initial value of this attribute to an empty array.
  def initialize
    @bikes = []
  end


  def release_bike
    fail 'No bikes available' if empty?
    @bikes.pop
  end

# Rename your attribute @bike to reflect that it will store more than one Bike instance.

  def dock(bike)
    fail 'Docking Station Full!' if full?
    @bikes.push(bike) # or <<
  end

  #  Define a full? predicate method that uses some of the dock code
  # to return true or false depending on whether the station is full or not

private

    def full?
      @bikes.count >= DEFAULT_CAPACITY
    end

    def empty?
     @bikes.empty?
    end

=begin This is what attr_reader does - this is a getter
  def bike
    @bike
  end
=end

end
