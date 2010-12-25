# Problem 9               [SOLVED]
# May 2010, James North
#
# Answer is 31875000

# Generates the pythagorean triple
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


(2..100).each do |n|
  (1..n-1).each do |m|
    a,b,c, = PythagoreanTriple(m, n)
#    puts "a = #{a}, b = #{b}, c = #{c}\n"
    if (a+b+c) == 1000
      puts a*b*c
    end
  end


end
