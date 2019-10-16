require 'bike'

describe Bike do
  it 'Does an instance of the Bike class respond to the method working?' do
    bike = Bike.new
    expect(bike).to respond_to(:working?)
  end

end
