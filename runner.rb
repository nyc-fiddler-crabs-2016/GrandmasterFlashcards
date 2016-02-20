require_relative 'card'
require_relative 'deck'
require_relative 'view'
require_relative 'parser'


# args = {
#   front: 'HTML',
#   back: 'The language of the fucking web!'
# }

# card = Card.new(args)

# show(card)

# card.edit_front

# # show(card)

# new_card = 3
# show(new_card)

# sample_parsed


deck = Deck.new('flashcard_samples.txt')
deck.load_deck
# p deck.cards
deck.show_deck

