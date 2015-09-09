class Destroyer

attr_reader :d_cord

  def initialize
    @size = 5
    @d_cord = []
  end

  def place_ship(cord1, cord2, cord3, cord4, cord5)
    if @d_cord & [cord1, cord2, cord3, cord4, cord5] != []
      fail 'Ship already in this location'
    else
      @d_cord.push(cord1, cord2, cord3, cord4, cord5).flatten!
    end
  end
end
