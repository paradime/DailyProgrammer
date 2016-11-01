def kap(first, last)
  (first..last).each do |i|
    sqrd = (i**2).to_s
    half = sqrd.length % 2 == 0 ? sqrd.length/2 : (sqrd.length/2)
    left= sqrd[0..(half)-1].to_i 
    right = sqrd[half..sqrd.length-1].to_i
    p i if left + right == i
  end
end

kap(101, 9000)
