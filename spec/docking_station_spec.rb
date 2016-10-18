require "docking_station"

describe DockingStation do
subject {described_class.new}
let(:bike) { double("bike", :working => true) }

  it "responds to #release_bike" do
    expect(subject).to respond_to(:release_bike)
  end
  it "releases a working bike" do
    expect(bike.working).to be(true)
  end
end
