require_relative 'bike'

class DockingStation

  DEFAULT_CAPACITY = 20

  attr_reader :capacity

  def initialize(capacity=DEFAULT_CAPACITY)
    @bikes = []
    @capacity = capacity
  end

  def dock_bike(bike)
    fail 'Error: Docking Station Full' if full?
    @bikes << bike
  end

  def release_bike
  fail 'Error. No bikes available' if empty?
  @bikes.pop
  end


  private

  attr_reader :bikes

  def full?
    bikes.count >= capacity
  end

  def empty?
    bikes.empty?
  end
end