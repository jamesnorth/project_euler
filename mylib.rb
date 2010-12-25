
module ProjectEuler
  # Fibonacci Sequence Generator
  #
  # This function creates a list containing the
  # Fibonacci sequence. This list is then returned
  # to the caller. This is a simple iterative style
  # of coding.
  #
  # Tested for calculating upto 5000 elements, takes
  # only a few hundred milliseconds.
  def fibonacci (n)
    seq = [0, 1]
    
    (2..n).each do |i|
      seq.push seq[i-1] + seq[i-2]
    end
    
    return seq
  end
  
  # Generates pythagorean triples based on two
  # parameters.
  def PythagoreanTriple (m,n)
    if m < n
      a = n**2 - m**2
      b = 2*m*n
      c = m**2 + n**2
      return a, b, c
    else
      return 0, 0, 0
    end
  end
  
  # Quick and simple way to determine if a number is a
  # palindrome. Returns true if the number passed to it
  # is a palindrome, otherwise it returns false.
  def Palindrome? (number)
    nstr = number.to_s()
    nstr == nstr.reverse
  end

  # Calculate factorials
  #
  def factorial (n)
    if n == 0
      return 1
    else
      return n * factorial(n-1)
    end
  end
end
