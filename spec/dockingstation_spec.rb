
# ~/projects/afternoon_work_makerboris_bikes/spec/dockingstation_spec.rb

require 'docking_station'

describe DockingStation do
  it 'checks instances of DockingStation class repond to release_bike method' do
  dockingstation = DockingStation.new
  expect(dockingstation).to respond_to(:release_bike)
  end

  it "test class method 'release_bike' creates new instance of Bike class if bike in wokrking" do
    dockingstation = DockingStation.new
    bike = dockingstation.release_bike
    expect(bike).to be_an_instance_of(Bike)
    expect(bike).to be_working
  end

end
