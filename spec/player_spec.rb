require 'player'

describe Player do

  it 'should place a ship' do
    subject.place_ship(1)
    expect(subject.ship.count).to eq(1)
  end

  it { is_expected.to respond_to(:fire).with(1).argument }

  it 'should hit a specific target' do
    subject.place_ship(1)
    expect(subject.fire(1)).to include(1)
  end
end
