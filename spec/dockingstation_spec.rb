
# ~/projects/afternoon_work_makerboris_bikes/spec/dockingstation_spec.rb

require 'docking_station'

describe DockingStation do
  it 'checks instances of DockingStation class repond to release_bike method' do
  dockingstation = DockingStation.new
  expect(dockingstation.release_bike).to eq ()
  end
end
