module View
  def get_string
    p "Please enter text"
    gets.chomp
  end

  def show(card)
    p "Front: #{card.front}"
    p "Back: #{card.back}"
  end

  def show_back
    puts "#{card[0]}"
  end

  def show_front
    puts "#{card[1]}"
  end

  def show_deck(deck)
    cards.each_with_index do |card, index|
      p "Card #{index + 1}"
      p "Front: #{card.front}"
      p "Back: #{card.back}"
      p "-------------------------------"
    end
  end
end



