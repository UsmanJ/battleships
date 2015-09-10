require_relative 'ship'

class Player
  COORDINATES = [:A1, :B1, :A2, :B2, :A3]

  attr_reader :board, :hits, :misses

  def initialize
    @board = []
    @hits = []
    @misses = []
  end

  def place(ship)
    fail "Ship already in this location!" if ship_already_in_location?(ship.coordinates)
    fail "Wrong coordinates" if wrong_coordinates?(ship.coordinates)
    placing_ship(ship)
  end


  def fire(coordinates)
    fail "You shot outside the range" if wrong_coordinates?(coordinates)
    return "You've hit a ship! Game over" if last_ship?(coordinates)
    return "You've hit a ship!" if struck(coordinates)
    return "You've missed a ship!" if missed(coordinates)
  end

  def placing_ship(ship)
    if ship.direction == :East
      placing_ship_east(ship)
    elsif ship.direction == :North
      true
    elsif ship.direction == :South
      place_ship_south(ship)
    else
      true
    end
  end


  def place_ship_south(ship)
    board << ship.coordinates
    (ship.size - 1).times do
      board << ship.coordinates.next
    end
  end

  # def placing_ship_east(ship)
  #   if ship.direction == :East
  #
  #     east = ship.coordinates.to_s.chars.map.with_index do |element, index |
  #       if index == 0
  #         element.next
  #       else
  #         element
  #       end
  #     end
  #     placing_ship(east.to_sym)
  #   end
  # end

  private

  def ship_already_in_location?(coordinates)
    board.include?(coordinates)
  end

  def last_ship?(coordinates)
    hits << coordinates if got_hit?(coordinates) && board.length - hits.length == 1
  end

  def got_hit?(coordinates)
    board.find {|position| position == coordinates}
  end

  def struck(coordinates)
    hits << coordinates if got_hit?(coordinates)
  end

  def missed(coordinates)
    misses << coordinates if !got_hit?(coordinates)
  end

  def wrong_coordinates?(coordinates)
    !COORDINATES.include?(coordinates)
  end

end
