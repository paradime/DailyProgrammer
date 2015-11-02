require 'threes'
require 'rspec'

describe 'Threes' do
  describe '.correct_num' do
    it 'input = 3' do
      actual = Threes.correct_num 3
      expect(actual).to be_eql(3)
    end
  end
  
  describe '.print_trail' do

    it 'input = 100' do
      input  =  {100 => -1, 33 => 0, 11 => 1, 4 => -1, 1 => 1}
      expected = "100 -1
33 0
11 1
4 -1
1
"
      actual = Threes.print_trail input
      expect(actual).to be_eql(expected)
    end
  end

  describe '.trail' do
    it 'input = 100' do
      expected =  {100 => -1, 33 => 0, 11 => 1, 4 => -1, 1 => 1}
      actual = Threes.trail(100)
      expect(actual).to be_eql(expected)
    end
  end
  
  it 'input = 1' do
    actual = Threes.divide_by_3(1)
    expect(actual).to be_eql(1)
  end

  it 'input = 3' do
    actual = Threes.divide_by_3(3)
    expect(actual).to be_eql(1)
  end

  it 'input = 4' do
    actual = Threes.divide_by_3(4)
    expect(actual).to be_eql(1)
  end

  it 'input = 2' do 
    actual = Threes.divide_by_3(2)
    expect(actual).to be_eql(1)
  end

  it 'input = 100' do
    actual = Threes.divide_by_3(100)
    expect(actual).to be_eql(33)
  end

end
