require 'computer'

describe Computer do
  subject(:computer)    { described_class.new }

  describe '#random_weapon' do
    it 'returns a random weapon' do
      expect(described_class::WEAPONS).to include computer.random_weapon
    end
  end
end
