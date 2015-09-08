class Player

  attr_reader :ship, :fire

  def initialize
    @ship = []
    @fire = []

  end

  def place_ship(number)
    @ship << number
  end

  def fire(fire)
    @fire << fire
  end
end
