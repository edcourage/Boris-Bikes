require_relative 'bike'


class DockingStation
  attr_reader :stored_bikes, :capacity
  DEFAULT_CAPACITY=20
  def initialize(capacity=DEFAULT_CAPACITY)
    @stored_bikes = []
    @capacity = capacity
  end

  def release_bike
    return raise StandardError if @stored_bikes.empty?
    Bike.new
  end

  def dock_bike(bike)
    raise "station full" if @stored_bikes.length == capacity
    @stored_bikes << bike
  end

end
