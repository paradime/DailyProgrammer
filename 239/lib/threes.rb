class Threes 
  
  def self.divide_by_3 input
    return 1 if input == 1
    Threes.correct_num(input)/3
  end

  def self.correct_num input
    if input % 3 == 0
      input 
    elsif input % 3 == 1
      (input - 1)
    else
      (input + 1)
    end
  end

  def self.trail input
    hash = {}
    value = input
    while value != 1
      hash[value] = Threes.correct_num(value) - value
      value = Threes.divide_by_3 value
    end
    hash[value] = 1
    hash
  end

  def self.print_trail hash
    hash.collect{|k, v| k != 1 ? "#{k} #{v}\n" : "#{k}\n"}.join('')
  end
end
    

