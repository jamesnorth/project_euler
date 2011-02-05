"""
The prime factors of 13195 are 5, 7, 13 and 29.

What is the largest prime factor of the number 600851475143 ?

NOTES
~~~~~
13195 - 5 * 7 * 13 * 29

1, 5, 7, 13, 29, 35, 65, 91, 145, 203, 377, 455, 1015, 1885, 2639, 13195

"""

from mathlib import EratostheneSieve

# First I need a list of prime numbers to use in the algorithm
primes = EratostheneSieve(1024)

factors = []

# Hmm how does one calculate prime factors algorithmically???

