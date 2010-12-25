# Problem 20                [SOLVED]
# May 2010, James North
#
# n! means n  (n  1)  ...  3  2  1
#
# Find the sum of the digits in the number 100!
#
# Answer is 648

debug = 0

def factorial (n)
  if n == 0
    return 1
  else
    return n * factorial(n-1)
  end
end

if debug == 1
  puts "2!     =   #{factorial(2)}"
  puts "5!     =   #{factorial(5)}"
  puts "10     =   #{factorial(10)}"
  puts "15!    =   #{factorial(15)}"
  puts "20!    =   #{factorial(20)}"
#  puts "100!   =   #{factorial(100)}"
end

# Generate the digits of 100!
numberStr = factorial(100).to_s

# Find the total of the digits
total = 0
0.upto(numberStr.length) do |i|
  total = total + (numberStr[i].to_i)
end

puts "The total of the digits in 100! is #{total}"
