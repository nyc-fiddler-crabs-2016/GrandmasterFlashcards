def get_string
  p "Please enter text"
  gets.chomp
end

def show(card)
  p "Front: #{card.front}"
  p "Back: #{card.back}"
end
