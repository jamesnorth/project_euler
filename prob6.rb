# Problem 6 in Ruby
# James North

# Use the Ruby Profiler
require 'profiler'

# Work out the first 10
n = 10

sum_squares = 0
square_sum = 0

# Work out the sum of the squares
1.upto(n) do |i|
  sum_squares = sum_squares + i**2
end

# Now work out the square of the sum
# I do this bit without loops by using a math trick
square_sum = (0.5*n*(n+1))**2

# Work out the difference
difference = square_sum - sum_squares

puts "The difference is #{difference.to_i}"

