class Player

  attr_reader :ship, :fires, :hit

  def initialize
    @ship = []
    @hit = []
    @fires = []
  end

  def place_ship(number)
    @ship << number
  end

  def fire(fire)
    if @fires.include?(fire)
      fail 'Already hit this location'
    elsif @ship.include?(fire) && @ship.count >= 1
      @ship.delete(fire)
      @fires << fire
      @hit << fire
      return 'hit'
    elsif @ship.include?(fire) && @ship.count == 1
      @ship.delete(fire)
      @fires << fire
      @hit << fire
      return 'All ships have sunk'
    else
      @fires << fire
      return 'miss'
    end
  end
end
