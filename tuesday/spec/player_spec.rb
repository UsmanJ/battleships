require 'player'

describe Player do

  it 'should place a ship' do
    subject.place_ship(1)
    expect(subject.ship.count).to eq(1)
  end

  it { is_expected.to respond_to(:fire).with(1).argument }

  it 'should hit a specific target' do
    subject.fire('A1')
    expect(subject.fires).to include('A1')
  end

  it 'can tell if has hit ship' do
    subject.place_ship('A1')
    subject.fire('A1')
    expect(subject.hit).to include('A1')
  end

  it 'can tell if has missed ship' do
    subject.fire('A1')
    expect(subject.ship).not_to include('A1')
  end

  it 'removes a hit ship' do
    subject.place_ship('A1')
    subject.fire('A1')
    expect(subject.ship).not_to include('A1')
  end

  it 'should not let you hit same location twice' do
    subject.fire('A1')
    expect{subject.fire('A1')}.to raise_error 'Already hit this location'
  end

  it 'should report then all ships are sunk' do
    subject.place_ship('A1')
    subject.fire('A1')
    expect(subject.ship).to be_empty
  end

  it 'should give error if ship array is empty' do
    subject.place_ship('A1')
    subject.fire('A1')
    expect(subject.ship).to be_empty, 'All ships have sunk'
  end
end
