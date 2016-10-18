require_relative 'bike'

class DockingStation

attr_reader :bikerack

ERR_EMPTY_BIKERACK = "There are no bikes to release!"
ERR_FULL_BIKERACK = "The docking station is full!"
  def initialize
    @bikerack = []
    @capacity = 0
  end

  def release_bike
    raise ERR_EMPTY_BIKERACK if empty?
    @bikerack.pop
  end

  def dock_bike(bike)
    raise ERR_FULL_BIKERACK if full?
    @bikerack << bike
    @capacity += 1
  end

  def empty?
      @bikerack.empty?
  end

  def full?
    @capacity >= 20
  end
end
