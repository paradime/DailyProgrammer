class Eel
    def self.problem? word, offense
        first = 0
        offense.split('').each do |char|
            found = false
            word[first..-1].split('').each_with_index do |char2, index|
                if char == char2
                    first = index
                    found = true
                    break
                end
            end
            if !found then return false end
        end
        true
    end
end
