-- Project Euler - Problem Three
-- 3rd August 2010, James North

-- Generate a list of the prime numbers by using a simple
-- sieve. 
primes :: [Integer]
primes = sieve [2..]
    where
        sieve (p:xs) = p : sieve [ x | x <- xs, x `mod` p /= 0]

-- Return the nth prime
nthPrime n = primes !! (n-1)


