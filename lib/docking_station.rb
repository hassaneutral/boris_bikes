class DockingStation
  attr_accessor :bike, :capacity
  DEFAULT_CAPACITY=20
  def initialize(cap=DEFAULT_CAPACITY)
    @bike = []
    @capacity = cap
  end

  def release_bike
    raise "No Bikes" if empty?
    @bike.pop

  end

  def dock(bike)
    raise "Is Full" if full?
    @bike.push(bike)
  end

  private

  def full?
    return true if @bike.length >= @capacity
    false
  end

  def empty?
    return true if @bike.length == 0
    false
  end
end
