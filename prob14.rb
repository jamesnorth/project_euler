# Problem 14            [SOLVED]
# 3rd June 2010, James North
#
# The following iterative sequence is defined for
# a set of positive integers.
#
# n -> n/2 (n is even)
# n -> 3n + 1 (n is odd)
#
# 13 - 40 - 20 - 10 - 5 - 16 - 8 - 4 - 2 - 1
#
# Answer is 837799

startingNumber = 13


def GenerateSequence (start)
  sequence = []
  sequence.push start
  x = start
  
  while x != 1
    if x % 2 == 0
      x = x/2
    else
      x = 3*x+1
    end
    sequence.push(x)
  end
  
  return sequence
end

result = GenerateSequence startingNumber
puts result

max = 0
start = 0
2.upto(1000000) do |i|
  result = GenerateSequence i
  if result.length > max
    start = i
    max = result.length
  end
end

puts "The max is #{max} and the starting number is #{start}"
