class Patrol

attr_reader :cord

  def initialize(cord1, cord2)
    @size = 2
    @cord = []
    # if @cord & player.ship != []
    #   fail 'Ship already in this location'
    # else
    @cord.push(cord1, cord2).flatten!
    # end
  end
end
