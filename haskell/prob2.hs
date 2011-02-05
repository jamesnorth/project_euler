-- ProjectEuler - Problem Two
-- 1st July 2010, By James North

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

-- Solve the problem by using a list comprehension and a couple of predicates.
solve = sum [ fibs !! n | n <- [0..100], even (fibs !! n), (fibs !! n) < 4000000 ]

-- Here we solve it using a differnt technique. Instead of calculating the fibonacci
-- sequence then filtering out the odd values we only generate the even values then
-- add them up. This is significantly quicker.
--
-- The closed form of the recurrent sequence is 
-- ((2 + sqrt(5))^n - (2 - sqrt(5))) / sqrt(5)
--
solve2 = sum [ ((2 + (sqrt 5))^n - (2 - (sqrt 5))^n) / (sqrt 5) | n <- [0..11] ]

-- WARNING!! Here be monads!! lol. I dont know
-- how this works... just that it does work.
main = do
    putStr "The solution of problem two is :- "
    print solve
    putStrLn ""

