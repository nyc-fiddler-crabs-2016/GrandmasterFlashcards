require 'csv'

class Parser
FILE1 = 'flashcard_samples.txt'
@parsed_file = []


def parser_load(file)
  File.open( file ).each do |line|
    @parsed_file << line
  end
  @parsed_file
end

end


parser = Parser.new('flashcard_samples.txt')
