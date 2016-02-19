class Deck

  attr_reader :cards

  def initialize(file)
    @file = file
    @cards = []

  def load_deck(file)
    loop parser
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

  def take_card
    card = cards[0]
    cards.rotate
    card
  end
end

