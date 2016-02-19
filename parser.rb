# module Parser
#   @parsed_file = []

#   def parser_load(file_name)
#     File.open( file_name ).each do |line|
#       @parsed_file << line
#     end
#     @parsed_file
#   end
# end


class Parser
def initialize
@parsed_file = []
end


def parser_load(file)
  File.open( file ).each do |line|
    puts line
    @parsed_file << line.chomp
  end
  p @parsed_file
  p '--------------------------'
 p @parsed_file.each_slice(3).to_a[0][0]
  # p @parsed_file[0][0]
  # p @parsed_file[1]
  # p @parsed_file[2
end

end


parser = Parser.new
p parser.parser_load('flashcard_samples.txt')
p '--------------------'
p parser.each_slice(3).to_a
# p parser
