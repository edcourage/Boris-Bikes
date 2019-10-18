
# ~/projects/afternoon_work_makerboris_bikes/spec/dockingstation_spec.rb

require 'docking_station'

describe DockingStation do
  it 'checks instances of DockingStation class respond to release_bike method' do
  dockingstation = DockingStation.new
  expect(dockingstation).to respond_to(:release_bike)
  end


  it "checks instances of DockingStation class respond to dock_bike method" do
    dockingstation = DockingStation.new
    expect(dockingstation).to respond_to(:dock_bike)
  end


  it "checks that dock_bike accepts argument" do
    dockingstation = DockingStation.new
    bike = Bike.new
    expect {dockingstation.dock_bike(bike)}.not_to raise_error
  end

  it "checks the instant variable '@stored_bikes' is an array in the DockingStation class" do
      dockingstation = DockingStation.new
      expect(dockingstation.stored_bikes).to be_kind_of(Array)
  end

  it "checks bike we dock is added to stored_bikes array" do
    dockingstation = DockingStation.new
    bike = Bike.new
    dockingstation.dock_bike(bike)
    expect(dockingstation.stored_bikes).to include(bike)
  end

  describe "#release_bike" do
    it "raises error if user calls release_bike and stored_bikes count == 0" do
      dockingstation = DockingStation.new
      expect{dockingstation.release_bike}.to raise_error(StandardError)
    end

    it "test class method 'release_bike' creates new instance of Bike class if bike in working and stored_bikes count > 0" do
      dockingstation = DockingStation.new
      bike = Bike.new
      dockingstation.dock_bike(bike)
      expect(bike).to be_an_instance_of(Bike)
      expect(bike).to be_working
    end
   end

   it 'raises error if user try to dock bike and station capacity is full.' do
    dockingstation = DockingStation.new
    bike = Bike.new
    dockingstation.dock_bike(bike)
    expect{dockingstation.dock_bike(bike)}.to raise_error(RuntimeError, "station full")
  end


end
