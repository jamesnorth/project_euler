#!/usr/bin/env ruby

acc = 0
0.upto(999) do |i|
  if i % 3 == 0 or i % 5 == 0
    acc = acc + i
  end
end

puts "The total is #{acc}\n"

# A slightly different way of doing it
acc = 0
(0..999).each do |i|
  if (i % 3 == 0) or (i % 5 == 0)
    acc = acc + i
  end
end

puts "The total is #{acc}\n"
