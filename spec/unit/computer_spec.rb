require 'computer'

describe Computer do
  subject(:computer)    { described_class.new }

  describe '#weapon' do
    it 'returns a random weapon' do
      allow(described_class::WEAPONS).to receive(:sample).and_return "Scissors"
      expect(computer.weapon).to eq "Scissors"
    end
  end
end
