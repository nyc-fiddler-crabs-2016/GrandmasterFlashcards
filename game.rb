class Game

 attr_reader :turns, :deck

  def initialize(deck)
    @deck = deck.shuffle
    @turns = 0
  end

  def turn
    deck.rotate!
    card = deck[0]
    #p card.back
    puts " #{card[0]}"
    make_guess(card)
    @turns += 1
    # return
  end

  def make_guess(card)
    p "What is your guess?"
    guess = gets.chomp
      if guess.downcase == card[1].downcase
        p "You are right!"
        return
      elsif guess == 'pass'
        return
      else
        p "Try again! or type 'pass' "
        puts "#{card[0]}"
        make_guess(card)
      end
  end
end
