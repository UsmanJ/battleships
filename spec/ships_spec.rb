require 'ships'

describe Ships do
  it 'creates patrol ship which has a size of 2' do
    subject
    expect(subject.patrol).to match_array([2, 'patrol'])
  end

  it 'creates destroyer ship which has size of 3' do
    subject
    expect(subject.destroyer).to match_array([3, 'destroyer'])
  end

  it 'creates submarine ship which has size of 3' do
    subject
    expect(subject.submarine).to match_array([3, 'submarine'])
  end

  it 'creates battleship ship which has size of 4' do
    subject
    expect(subject.battleship).to match_array([4, 'battleship'])
  end

  it 'creates an aircraft ship which has size of 5' do
    subject
    expect(subject.aircraft).to match_array([5, 'aircraft'])
  end
end
