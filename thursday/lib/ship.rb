
class Ship

  def self.battleship(coordinates, direction)
    new(coordinates, direction, size = 2)
  end

  attr_reader :coordinates, :size, :direction

  def initialize(coordinates, direction, size = 1, hits = 0)
    @coordinates = coordinates
    @direction = direction
    @size = size
    @hits = hits
  end
end
