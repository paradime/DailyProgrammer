str = gets.strip
newString = ''
vowels = %w(A E I O U)
const = %w(B C D F G H J K L M N P Q R S T V X Z W Y)
str.chars.each do |char|
  case char
  when 'v'
    newString+= vowels.sample.downcase
  when 'V'
    newString+= vowels.sample
  when 'c'
    newString += const.sample().downcase
  when 'C'
    newString += const.sample()
  else
    raise ArgumentError "Should be c's or v's"
  end
end
puts newString
   
