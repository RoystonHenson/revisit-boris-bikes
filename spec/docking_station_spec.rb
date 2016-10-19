require "docking_station"

describe DockingStation do
  subject { described_class.new }
  let(:bike) { double("bike", :working => true) }

  describe "#initialize" do
    it "with default capacity" do
      #subject { described_class.new }
      expect(subject.capacity).to eq(20)
    end
    it "with user-set capacity" do
      docking_station = DockingStation.new(34)
      expect(docking_station.capacity).to eq(34)
    end
  end
  describe "#release_bike" do
    it "responds to #release_bike" do
      docking_station = DockingStation.new
      expect(docking_station).to respond_to(:release_bike)
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
  describe "#empty?" do
    it "raises error releasing bike, while empty" do
      expect{subject.release_bike}.to raise_error(DockingStation::ERR_EMPTY_BIKERACK)
    end
  end
  describe "#full?" do
    it "raises error when docking bike, while full" do
      DockingStation::DEFAULT_CAPACITY.times {subject.dock_bike(bike)}
      expect{subject.dock_bike(bike)}.to raise_error(DockingStation::ERR_FULL_BIKERACK)
    end
  end
end
