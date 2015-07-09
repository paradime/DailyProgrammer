require 'rspec'
require 'haystack'

describe 'Submit a file and it outputs all lines that are human readable' do 
  context 'File contains no readable words' do
    false
  end

end

describe '.parse_line' do
  let(:hay) {Haystack.new}  
  it 'all words dont exist' do
    result = hay.parse_line 'Afads? ,fyopauyf pahdsfpuah\n'
    expect(result).to be false
  end

  it 'all words exist' do
    result = hay.parse_line "quick, brown? fox ran over the laze frog\n"
    expect(result).to be true
  end

  it 'some words exist' do
    result = hay.parse_line 'some wfers words dint exst\n'
    expect(result).to be false
  end
end
  