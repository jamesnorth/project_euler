# 2^15 = 32768 and the sum of its digits is 3 + 2 + 7 + 6 + 8 = 26.
#
# What is the sum of the digits of the number 2^1000?

number = 2**1000
numberStr = number.to_s

total = 0
0.upto(numberStr.length) do |i|
  total = total + (numberStr[i].to_i)
end

puts "The total is #{total}"