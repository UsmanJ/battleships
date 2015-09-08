class Patrol

attr_reader :cord

  def initialize
    @size = 2
    @cord = []
  end

  def place_ship(cord1, cord2)
    # if @cord.include?(cord1, cord2)
    #   fail 'Already hit this location'
    # else
      @cord.push(cord1, cord2).flatten
    # end
  end
end
