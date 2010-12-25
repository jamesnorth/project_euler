# Problem 4                   [SOLVED]
# May 2010, James North
#
# The answer is 906609
#

# Quick and simple way to determine if a number is a
# palindrome. Returns true if the number passed to it
# is a palindrome, otherwise it returns false.
def Palindrome? (number)
  nstr = number.to_s()
  nstr == nstr.reverse
end

# 
array = (900..999).to_a
mult = array.inject([]) { |a,b| a += array.map { |y| b*y}}

# Select only the palindromes in the range.
palindromes = mult.select{ |a| Palindrome?(a) }

# List all of the palindromes found in the array.
puts palindromes
