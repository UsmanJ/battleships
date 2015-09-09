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

#
# def cc(coord)
#
# letter = coord[0]
#
# a = ["a", "b", "c", "d", "e", "f", "g", "h", "i", "j"]
#
# if a.include?(letter) == true
# l = "fine"
# else
# l = "wrong"
# end
#
# number = coord[1]
#
# a = ['1', '2', '3', '4', '5', '6', '7', '8', '9', '0']
#
# if a.include?(number) == true
# n = "fine"
# else
# n = "wrong"
# end
#
# second_num = coord[2]
#
# if coord[2] == nil
# two = "fine"
# elsif letter == 1 && second_num == 0
# two = "fine"
# else
# two = "wrong"
# end
#
# if n == "wrong" || l == "wrong"
#  return "WRONG FORMAT: Choose coordinate from A0 - J9"
# # elsif n == "wrong" || l == "wrong" || two == "wrong"
# #   return "WRONG FORMAT"
# else
#  return "coord accepted"
# end
#
# end
#
# end
