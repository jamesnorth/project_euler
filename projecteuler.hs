
-- Define the Fibonacci sequence
-- This is the slowest algorithm for calculating
-- the sequence because it has to make so many
-- function calls. 
fibonacci :: (Integral a) => a -> a
fibonacci 0 = 0
fibonacci 1 = 1
fibonacci a = fibonacci(a-1) + fibonacci(a-2)

-- WOW! This one is lightning fast. It defines
-- an infinite list. A bit mind bending but it
-- does make sense. 
fibs :: [Integer]
fibs = 1:1:zipWith (+) fibs (tail fibs)

-- Get the nth Fibonacci number
fib n = fibs !! n

-- Generate a list of the prime numbers by using a simple
-- sieve. 
primes :: [Integer]
primes = sieve [2..]
    where
        sieve (p:xs) = p : sieve [ x | x <- xs, x `mod` p /= 0]

-- Return the nth prime
nthPrime n = primes !! (n-1)

