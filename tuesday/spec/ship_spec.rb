require 'ship'

describe Ship do
  it 'creates ship which has the right size' do
    ship = Ship.new(5)
    expect(ship.size).to eq(5)
  end

  it 'has a size which is a fixnum' do
    ship = Ship.new(4)
    expect(ship.size).to be_a(Fixnum)
  end
end
