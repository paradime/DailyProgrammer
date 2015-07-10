class Delivery
    attr_accessor :capacity, :start_location, :destinations
    def initialize args={}
        @destinations = Array.new
        inp = read_input
        parse_input inp
    end

    def read_input
        input = Array.new
        ARGF.each_with_index do |line, index|
            input << line
        end
        input
    end

    def parse_input inp
       inp.each_with_index do |line, index|
           if index == 0
               cap_and_location = line.split(/\D+/)
               @start_location  = Vertex.new 
                cap_and_location.shift.to_i, 
                cap_and_location.shift.to_i, 
                cap_and_location.shift.to_i
           elsif index >= 2
               cap_and_location = line.split(/\D+/)
               @destinations.push( Vertex.new
                cap_and_location.shift.to_i, 
                cap_and_location.shift.to_i, 
                cap_and_location.shift.to_i)
           end
       end
    end
end

class Vertex
    attr_accessor :x, :y, :cap

    def initialize capacity, xcoord, ycoord
        @x = xcoord
        @y = ycoord
        @cap = capacity
    end
end

d = Delivery.new

puts d.capacity
puts d.destinations
