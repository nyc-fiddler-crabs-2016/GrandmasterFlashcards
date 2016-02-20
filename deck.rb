require_relative 'parser'
require_relative 'card'

class Deck
  include Parser
  attr_reader :cards, :file

  def initialize(file_name)
    @file = file_name
    @cards = []
  end

  def load_deck
      deck_array = parse_file(@file)
      deck_array.each_slice(3).to_a.each do |card_thing|
        args  = {front: card_thing[1], back: card_thing[0]}
        @cards << Card.new(args)
    end
  end

  def add_card(front, back)
    cards << Card.new({front: front, back: back})
  end

  def delete_card(index)
    cards.delete_at(index)
  end

  def shuffle
    @cards.shuffle
  end
end

