require "submarine"
class Submarine

attr_reader :s_cord

  def initialize
    @size = 5
    @s_cord = []
  end

  def place_ship(cord1, cord2, cord3, cord4, cord5)
    if @s_cord & [cord1, cord2, cord3, cord4, cord5] != []
      fail 'Ship already in this location'
    else
      @s_cord.push(cord1, cord2, cord3, cord4, cord5).flatten!
    end
  end
end
