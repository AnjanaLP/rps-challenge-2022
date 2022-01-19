require_relative 'computer'

class Game

  attr_reader :player_weapon, :computer_weapon, :result

  def initialize(player_weapon, computer = Computer.new)
    @player_weapon = player_weapon
    @computer = computer
  end

  def computer_weapon
    @computer_weapon ||= computer.random_weapon
  end

  def end
    @result = the_result
  end

  private

  RULES = {
            rock:     { rock: :draw, paper: :lose, scissors: :win  },
            paper:    { rock: :win,  paper: :draw, scissors: :lose  },
            scissors: { rock: :lose, paper: :win,  scissors: :draw }
          }

  attr_reader :computer

  def the_result
    RULES[player_weapon.downcase.to_sym][computer_weapon.downcase.to_sym]
  end
end
