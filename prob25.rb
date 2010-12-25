# Problem 25        [SOLVED]
# 1st June 2010, James North
#
# Answer is 4782

if false
  require 'profile'
end

num = 5000

# Fibonacci Sequence Generator
#
# This function creates a list containing the
# Fibonacci sequence. This list is then returned
# to the caller. This is a simple iterative style
# of coding.
def fibonacci (n)
  seq = [0, 1]
  
  (2..n).each do |i|
    seq.push seq[i-1] + seq[i-2]
  end
  
  return seq
end

# Generate over 5000 elems... a lot of memory!!!
puts "Generating the fibonacci sequence"
sequence = fibonacci(num)

0.upto(num) do |i|
  tmp = sequence[i].to_s
  if tmp.length == 10 or tmp.length == 100 or tmp.length == 1000
    puts "F#{i} = #{tmp} / length = #{tmp.length}"
  end
end

puts ""
puts ""

0.upto(num) do |i|
  tmp = sequence[i].to_s
  if tmp.length == 1000
    puts "F#{i} = #{tmp} / length = #{tmp.length}"
    break
  end
end