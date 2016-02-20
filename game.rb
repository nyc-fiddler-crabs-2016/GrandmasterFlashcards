require_relative 'view'
require_relative 'turn_logic'

class Game
 attr_reader :turns, :deck, :view
include View
include Turn_logic

  def initialize(deck)
    @deck = deck.shuffle
    @turns = 0
  end

  def player_guess
    @deck.turn
  end
end
