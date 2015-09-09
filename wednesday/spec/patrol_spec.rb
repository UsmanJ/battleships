require 'patrol'

describe Patrol do

  it 'must add patrol to cord array' do
    patrol = Patrol.new('A1', 'A2')
    expect(patrol.cord).to include('A1')
  end
end
