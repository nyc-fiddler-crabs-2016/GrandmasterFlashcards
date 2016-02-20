require_relative 'view'
require_relative 'model'
require_relative 'deck'

deck = Deck.new('flashcard_samples.txt')
deck = deck.load_deck

game = Game.new(deck)

until game.turns == game.deck.length
  game.turn
end


