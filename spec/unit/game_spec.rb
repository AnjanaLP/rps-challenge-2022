require 'game'

describe Game do
  subject(:game)           { described_class.new(player_weapon, computer) }
  let(:computer)           { double :computer }
  let(:player_weapon)      { "Rock" }

  describe '#player_weapon' do
    it "returns the player's weapon choice" do
      expect(game.player_weapon).to eq "Rock"
    end
  end

  describe '#computer_weapon' do
    it "ask the computer for a random weapon" do
      expect(computer).to receive(:random_weapon)
      game.computer_weapon
    end
  end

  describe '#end' do
    context "when computer chooses Rock" do
      before { allow(computer).to receive(:random_weapon).and_return("Rock") }

      it 'player wins when they choose Paper' do
        game = described_class.new("Paper", computer)
        expect(game.end).to eq :win
      end

      it 'player loses when they choose Scissors' do
        game = described_class.new("Scissors", computer)
        expect(game.end).to eq :lose
      end

      it 'player draws when they choose Rock' do
        expect(game.end).to eq :draw
      end
    end

    context "when computer chooses Paper" do
      before { allow(computer).to receive(:random_weapon).and_return("Paper") }

      it 'player wins when they choose Scissors' do
        game = described_class.new("Scissors", computer)
        expect(game.end).to eq :win
      end

      it 'player loses when they choose Rock' do
        expect(game.end).to eq :lose
      end

      it 'player draws when they choose Paper' do
        game = described_class.new("Paper", computer)
        expect(game.end).to eq :draw
      end
    end

    context "when computer chooses Scissors" do
      before { allow(computer).to receive(:random_weapon).and_return("Scissors") }

      it 'player wins when they choose Rock' do
        expect(game.end).to eq :win
      end

      it 'player loses when they choose Paper' do
        game = described_class.new("Paper", computer)
        expect(game.end).to eq :lose
      end

      it 'player draws when they choose Scissors' do
        game = described_class.new("Scissors", computer)
        expect(game.end).to eq :draw
      end
    end
  end
end
