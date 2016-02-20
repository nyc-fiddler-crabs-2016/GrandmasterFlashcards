require_relative 'view'
require 'pry'
class Game
 attr_reader :turns, :deck, :view
include View

  def initialize(deck)
    @deck = deck#.shuffle
    @turns = 0
    # @view = View.new
  end

  def turn
    deck.rotate!
    card = deck[0]
    puts " #{card.back}"
    make_guess(card)
    @turns += 1
    return
  end

  def make_guess(card)
    p "What is your guess?"
    guess = gets.chomp
      if guess.downcase == card.front.downcase
        puts "You are right!"
        puts
        puts 'Next turn......'
        return
      elsif guess == 'pass'
        puts
        puts 'Ok, moving on...'
        return
      else
        puts
        puts "Try again! or type 'pass' "
        puts "#{card.back}"
        make_guess(card)
      end
  end
end
