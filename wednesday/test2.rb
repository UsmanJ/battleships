class Player

  attr_reader :ship, :fires, :hit

  def initialize
    @ship = []
    @hit = []
    @fires = []
  end

  def place_ship(ship)
    if @ship & ship.cord != []
      fail 'Ship already in this location'
    elsif
      @ship.push(ship.cord).flatten!
    end
  end

  def fire(fire)
    if @fires.include?(fire)
      fail 'Already hit this location'
    elsif @ship.include?(fire) && @ship.count >= 2
      @ship.delete(fire)
      @fires << fire
      @hit << fire
      return 'Hit'
    elsif @ship.include?(fire) && @ship.count == 1
      @ship.delete(fire)
      @fires << fire
      @hit << fire
      return 'Hit! All ships have sunk'
    else
      @fires << fire
      return 'Miss'
    end
  end
end
