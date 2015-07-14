require 'rspec'
require_relative 'garland'

describe 'test' do
    it 'Programmer' do 
        result = Garland.g("Programmer")
        expect(result).to equal(0)
    end

    it 'ceramic' do 
        result = Garland.g('ceramic')
        expect(result).to equal(1)
    end

    it 'onion' do 
        result = Garland.g('onion')
        expect(result).to equal(2)
    end

    it 'alfalfa' do
        result = Garland.g('alfalfa')
        expect(result).to equal(4)
    end
end
