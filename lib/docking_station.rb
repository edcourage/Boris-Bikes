require_relative 'bike'


class DockingStation
  attr_reader :stored_bikes

  def initialize
    @stored_bikes = []

  end



  def release_bike
    return raise StandardError if @stored_bikes.empty?
    Bike.new
  end

  def dock_bike(bike)
    raise "station full" if @stored_bikes.length == 1
    @stored_bikes << bike
  end

end
