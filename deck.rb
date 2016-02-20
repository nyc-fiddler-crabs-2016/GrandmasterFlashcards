require_relative 'parser'
require_relative 'card'
require 'byebug'







class Deck
  # include 'Parser'

  attr_reader :cards, :file

  def initialize(file_name)
    @file = file_name
    @cards = []
    #@deck_array = []
    # @parser = Parser.new
  end



  def load_deck
    deck_array = []
    File.open(file).each do |line|
      deck_array << line.chomp
    end
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

  def take_card
    card = cards[0]
    cards.rotate
    card
  end

  def show_deck
    cards.each_with_index do |card, index|
      p "Card #{index + 1}"
      p "Front: #{card.front}"
      p "Back: #{card.back}"
      p "-------------------------------"
    end
  end









end

