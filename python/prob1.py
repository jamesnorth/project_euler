
"""
If we list all the natural numbers below 10 that are multiples of 3 or 5, we
get 3, 5, 6 and 9. The sum of these multiples is 23.

Find the sum of all the multiples of 3 or 5 below 1000.
"""

multiples = []
for n in range(1000):
    if n % 3 == 0 or n % 5 == 0:
        multiples.append(n)

print multiples

acc = 0
for val in multiples:
    acc = acc + val

print acc
### OR #####
# print sum(x for x in xrange(1, 1000) if x%3==0 or x%5==0)

