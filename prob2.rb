#!/usr/bin/env ruby

# use the Ruby profiler
require 'profiler'

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

# Calculate the first 150 elements of
# the fibonacci sequence
fib = fibonacci 150

# Accumulate all the even elements
# of the fibonacci sequence below
# 4000000.
acc = 0
fib.each do |i|
  if i < 4000000 and i % 2 == 0
    acc = acc + i
  end
end

# Print the results
puts "\nTotal = #{acc}"
