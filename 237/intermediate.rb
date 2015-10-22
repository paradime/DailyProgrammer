require 'pry'

def up?(box, x, y)
  # puts "(#{x}, #{y})"
  ind = y
  while box[ind] [x]!= '+' && ind > -1
    ind -= 1
  end
  box[ind] [x+1]== '-' ? true : false
end

exclusion = ['+', '-', '|']
replace = ['', '#', '=', '-', '.', ' ']
boxes = []
while line = gets do
  boxes << line
end
puts boxes[0][0]
boxes.each_with_index do |line, index|
  newline = ''
  levels = line.count('|')/2
  cur_level = 0
  char_count = 0
  line.each_char do |char|
    if !exclusion.include? char
      newline << replace[cur_level]
    else
      if char == '|' && up?(boxes, char_count, index)
        cur_level += 1 
      elsif char == '|' && !up?(boxes, char_count, index)
        cur_level -= 1 
      end
      newline << char
    end
    char_count += 1
  end
  puts newline
end
