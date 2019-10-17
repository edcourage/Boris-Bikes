require_relative 'bike'


class DockingStation
  attr_reader :stored_bikes

  def initialize
    @stored_bikes = []

  end



  def release_bike
    return raise StandardError if @stored_bikes > 0
    Bike.new
  end

  def dock_bike(bike)

    @stored_bikes << bike
  end

end
