class Garland
    def self.g str
        buff = ''
        len = 0
        str.downcase!
        str.split('').each do |char|
            buff += char
            if comp_backwards(str, buff) && buff.length != str.length
                len = buff.length
            end
        end
        len
    end

    def self.comp_backwards(original, piece)
        piece.eql?  original[(-1*piece.length)..-1]
    end
end
