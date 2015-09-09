class Ship

attr_accessor :size
attr_reader :ship_size

@@ship_size = [2,3,3,4,5]

def set_size(size)
  if @@ship_size.include?(size) && size == 3
    x = @@ship_size.index(3)
    @@ship_size.delete_at(x)
  elsif @@ship_size.include?(size)
    @@ship_size.delete(size)
    self.size = size
  else
    return 'Either ship is already created or you have entered
      the wrong value. Enter a value between 2 and 5.'
  end
end

def see_ship_size
  @@ship_size
end
end
