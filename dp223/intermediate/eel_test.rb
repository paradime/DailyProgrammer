require 'rspec'
require_relative 'eel'

context 'We dont want to show a word that might be innapropriate' do
    it 'synchronized snond' do
        expect(Eel.problem? 'synchronized', 'snond').to eq(true)
    end

    it 'misfunctioned snond' do
        expect(Eel.problem? 'misfunctioned', 'snond').to eq(true)
    end

    it 'mispronounced snond' do
        expect(Eel.problem? 'mispronounced', 'snond').to eq(false)
    end

    it 'shotgunned snond' do
        expect(Eel.problem? 'shotgunned', 'snond').to eq(false)
    end

    it 'snond snond' do
        expect(Eel.problem? 'snond', 'snond').to eq(true)
    end
end
