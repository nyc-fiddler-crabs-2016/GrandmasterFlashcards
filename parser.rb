module Parser


  def parse_file(file_name)
    deck_array = []
    File.open(file_name).each do |line|
        deck_array << line.chomp
      end
      deck_array
  end

end




# def parser(file)
#   deck_array = []
#     File.open(file).each do |line|
#       deck_array << line.chomp
#     end
#    deck_array = deck_array.each_slice(3).to_a
#    deck_array
# end








# module Parser
#   @parsed_file = []

#   def parser_load(file_name)
#     File.open( file_name ).each do |line|
#       @parsed_file << line
#     end
#     @parsed_file
#   end
# end


# class Parser
#   attr_reader :parsed_file

#   def initialize
#   @parsed_file = []
#   end

#   def self.parsed_file
#     parser_load('flashcard_samples.txt')
#   end

#   def self.parser_load(file)
#     File.open( file ).each do |line|
#       @parsed_file << line.chomp
#     end

#    @parsed_file = @parsed_file.each_slice(3).to_a
#   end

#   def save
#     File.open('flashcard_samples.txt', 'w+').each do |line|
#       @parsed_file.each do |line|
#         File << line
#       end
#     end
#   end

# end



# module Parser
#   attr_reader :parsed_file


#   def parser_load(file)
#     File.open( file ).each do |line|
#       @parsed_file << line.chomp
#     end

#    @parsed_file = @parsed_file.each_slice(3).to_a
#   end

#   def save
#     File.open('flashcard_samples.txt', 'w+').each do |line|
#       @parsed_file.each do |line|
#         File << line
#       end
#     end
#   end

# end




# parser = Parser.new
# p parser.parser_load('flashcard_samples.txt')
# p '--------------------'
# p parser.parsed_file
# p '------------------------------------'
# p parser.save
# p parser.each_slice(3).to_a
# p parser
