require 'board'

describe Board do
  it 'must create a board with correct dimensions' do
    subject
    expect(subject.dimensions).to match_array([1, 1])
  end
end
