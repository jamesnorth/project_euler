# Problem 48
# 1st June 2010, James North
#
#
# The series 1^1 + 2^2 + 3^3 + ... + 10^10 = 10405071317
# Find the last ten digits of the series 1^1 + ... + 1000^1000
#
# Answer is 9110846700

# Set the end of the series
series_end = 1000

total = 0
1.upto(series_end) do |i|
  total = total + i**i
end

resultStr = total.to_s
stringLen = resultStr.length

puts "The first 10 digits of the total of the series is #{resultStr[stringLen-10..stringLen]}"