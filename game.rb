class Game

 attr_reader :turns
  def initialize(deck)
    @deck = deck.shuffle
    @turns = 0
  end

  def turn
    deck.rotate!
    card = deck[0]
    p card.back
    guess
    @turns += 1
    # return
  end

  def guess
    p "What is your guess?"
    guess = gets.chomp
      if guess.downcase == card.front.downcase
        p "You are right!"
        return
      elsif guess == 'pass'
        return
      else
        p "Try again! or type 'pass' "
        guess
      end
  end
end
