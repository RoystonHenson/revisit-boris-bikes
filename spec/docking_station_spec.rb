require "docking_station"

describe DockingStation do
  subject {described_class.new}
  let(:bike) { double("bike", :working => true) }

  describe "#release_bike" do
    it "responds to #release_bike" do
      expect(subject).to respond_to(:release_bike)
    end
    it "releases a working bike" do
      subject.dock_bike(bike)
      expect(subject.release_bike).to eq(bike)
    end
  end
  describe "#dock_bike" do
    it "responds to #dock_bike" do
      expect(subject).to respond_to(:dock_bike)
    end
    it "stores bike in docking station" do
      subject.dock_bike(bike)
      expect(subject.bikerack).to include(bike)
    end
  end

end
