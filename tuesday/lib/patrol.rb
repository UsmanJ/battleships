class Patrol

attr_reader :cord

  def initialize
    @size = 2
    @cord = []
  end

  def place_ship(cord1, cord2)
    #if @cord.find { |x| x }
    if @cord & [cord1, cord2] != []
      fail 'Ship already in this location'
    else
      @cord.push(cord1, cord2).flatten!
    end
  end
end
