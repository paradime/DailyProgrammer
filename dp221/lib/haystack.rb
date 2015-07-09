require 'pry'

class Haystack
  attr_reader :dict

  def initialize
    create_dict
  end

  def create_dict
    file = File.open('/usr/share/dict/words', 'r') 
    @dict = file.read.split(/\n/)
  end

  def parse_line line
    line.split(' ').each do |word|
      newWord = word.downcase.scan(/\w+/).first
      if !@dict.include? newWord
        return false
      end
    end
    true
  end

  def read_file file
    file = File.open(file, 'r')
    i = 0
    output = ''
    file.each_line do |line|
      puts i
      if parse_line line
        output += line 
      end
      i +=1
    end
    puts output
  end
end