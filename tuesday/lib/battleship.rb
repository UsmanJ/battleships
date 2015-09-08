class Battleship

attr_reader :b_cord

  def initialize
    @size = 5
    @b_cord = []
  end

  def place_ship(cord1, cord2, cord3, cord4, cord5)
    if @b_cord & [cord1, cord2, cord3, cord4, cord5] != []
      fail 'Ship already in this location'
    else
      @b_cord.push(cord1, cord2, cord3, cord4, cord5).flatten!
    end
  end
end
