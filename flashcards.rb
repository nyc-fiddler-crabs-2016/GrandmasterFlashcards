require_relative 'view'
require_relative 'model'
require_relative 'deck'

my_deck = Deck.new('flashcard_samples.txt')
my_deck.load_deck
the_deck = my_deck.cards
game = Game.new(the_deck)

while game.turns < game.deck.length
  game.turn
end

puts "Game over"
