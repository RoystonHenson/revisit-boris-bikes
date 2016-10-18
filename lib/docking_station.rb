require_relative 'bike'

class DockingStation

attr_reader :bikerack

ERR_EMPTY_BIKERACK = "There are no bikes to release!"

  def initialize
    @bikerack = []
  end

  def release_bike
    raise ERR_EMPTY_BIKERACK if empty?
    @bikerack.pop
  end

  def dock_bike(bike)
    @bikerack << bike
  end

  def empty?
      @bikerack.empty?
  end
end
