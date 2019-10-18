require_relative 'bike'


class DockingStation
  attr_reader :stored_bikes, :capacity
  DEFAULT_CAPACITY=20
  def initialize(capacity=DEFAULT_CAPACITY)
    @stored_bikes = []
    @capacity = capacity
  end

  def release_bike
    return raise StandardError if empty?
    Bike.new
  end

  def dock_bike(bike)
    raise "station full" if full?
    @stored_bikes << bike
  end

  private

  def full?
    @stored_bikes.length == capacity
  end

  def empty?
    @stored_bikes.empty?
  end



end
