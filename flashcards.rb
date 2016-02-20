require_relative 'view'
require_relative 'model'


game = Game.new(Deck.new)

until game.turns == game.deck.length
  game.turn
end


