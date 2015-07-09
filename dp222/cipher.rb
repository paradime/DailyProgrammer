class Cipher
    @m = 2**32
    @a = 1664525
    @c = 1013904223

    def self.encode args
        key = args[:key]
        msg = args[:msg]
        new_text = Array.new
        #encode message and return
        msg.chars.each  do |char|
            new_text.push(char.ord + key)      
        end
        new_text
    end

    def self.decode args
        key = args[:key]
        msg = args[:msg]
        #decrypt message and return
        decr = ''
        msg.each do |char|
            decr += (char.to_i - key).chr
        end
        decr
    end
end

message =  Cipher.encode({key: 123, msg: "Hello!"})
puts message
puts "-----"
decmessage = Cipher.decode({key: 123, msg: message})
puts decmessage
