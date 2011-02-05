-- Project Euler - Problem One
-- James North

-- WOW!!! This was so simple. This language is AWESOME!
-- This was much easier than other languages I've used.

filterNums xs = [ x | x <- xs, x `mod` 3 == 0 || x `mod` 5 == 0 ]
solveProblem = sum (filterNums [1..999])

-- Or it could be solved in this one liner..
solve = sum [ x | x <- [1..999], x `mod` 3 == 0 || x `mod` 5 == 0 ]

main = do
    putStrLn "The solution to problem one is :-"
    print solve
    putStrLn ""

