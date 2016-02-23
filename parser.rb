module Parser

  def parse_file(file_name)
    deck_array = []
    File.open(file_name).each do |line|
        deck_array << line.chomp
      end
      deck_array
  end
end

