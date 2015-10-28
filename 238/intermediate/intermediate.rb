require 'pry'
def get_words(level)
  num_words = [5, 7, 9, 11, 13]
  word_length = [4, 5, 6, 7, 8]
  file = File.open('enable1.txt')
  puts 'Generating...'
  lines = file.readlines.select{|word| word.strip.length == word_length[level-1]}
  file.close
  words = lines.sample(num_words[level-1])
  words.each{|word| word.strip!}
end

def check_guess(guess, answer)
  diff = 0
  answer.length.times { |i| diff += 1 if guess[i] != answer[i] }
  diff
end

while true do
  puts 'what difficulty (1-5)?'
  level = gets.strip.to_i
  guesses = 4
  words = get_words(level)
  puts words
  answer = words.sample.strip
  while guesses > 0 do
    puts "Guess (#{guesses} left)?"
    guess = gets.strip
    difference = check_guess(guess, answer)
    if !words.include? guess
      puts "That word isn't in the range"
    elsif difference > 0
      puts "#{answer.length - difference}/#{answer.length} correct"
      guesses -= 1
    else
      puts "You win"
      break
    end
  end
  puts "You lose it was #{answer}" if guesses == 0
end



