require_relative 'bike'

class DockingStation

attr_reader :bikerack

  def initialize
    @bikerack = []
  end

  def release_bike
    @bikerack.pop
  end

  def dock_bike(bike)
    @bikerack << bike
  end
end
