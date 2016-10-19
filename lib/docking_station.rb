require_relative 'bike'

class DockingStation

attr_reader :bikerack, :capacity

ERR_EMPTY_BIKERACK = "There are no bikes to release!"
ERR_FULL_BIKERACK = "The docking station is full!"
DEFAULT_CAPACITY = 20
MAX_CAPACITY = 0

  def initialize(capacity=DEFAULT_CAPACITY)
    @bikerack = []
    @capacity = capacity
  end

  def release_bike
    raise ERR_EMPTY_BIKERACK if empty?
    @bikerack.pop
  end

  def dock_bike(bike)
    raise ERR_FULL_BIKERACK if full?
    @bikerack << bike
    @capacity -= 1
  end

  def empty?
      @bikerack.empty?
  end

  def full?
    @capacity <= MAX_CAPACITY
  end
end
