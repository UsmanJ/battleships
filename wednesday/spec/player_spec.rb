require 'player'

describe Player do

# let(:patrol){double(:patrol, {})}

  it 'should place a ship' do
    ship = Patrol.new('A1', 'A2')
    subject.place_ship(ship)
    expect(subject.ship.count).to eq(2)
  end

  it { is_expected.to respond_to(:fire).with(1).argument }

  it 'should hit a specific target' do
    subject.fire('A1')
    expect(subject.fires).to include('A1')
  end

  it 'can tell if has hit ship' do
    ship = Patrol.new('A1', 'A2')
    subject.place_ship(ship)
    subject.fire('A1')
    expect(subject.hit).to include('A1')
  end

  it 'can tell if has missed ship' do
    subject.fire('A1')
    expect(subject.ship).not_to include('A1')
  end

  it 'removes a hit ship' do
    ship = Patrol.new('A1', 'A2')
    subject.place_ship(ship)
    subject.fire('A1')
    expect(subject.ship).not_to include('A1')
  end

  it 'should not let you hit same location twice' do
    subject.fire('A1')
    expect{subject.fire('A1')}.to raise_error 'Already hit this location'
  end

  it 'should give message if all ships have sunk' do
    ship = Patrol.new('A1', 'A2')
    subject.place_ship(ship)
    subject.fire('A2')
    expect(subject.fire('A1')).to eq 'Hit! All ships have sunk'
  end

  it 'should not let ship come onto another ship' do
    ship = Patrol.new('A1', 'A2')
    ship2 = Patrol.new('A3', 'A2')
    subject.place_ship(ship)
    expect{subject.place_ship(ship2)}.to raise_error 'Ship already in this location'
  end
end
