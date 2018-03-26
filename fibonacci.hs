fib :: Int -> Int
fib x = fibGen 0 1 x

fibGen :: Int -> Int -> Int -> Int
fibGen a b n 
    | n == 0 = a
    | otherwise = fibGen b (a + b) (n - 1) 


fibs :: [Int]
fibs = 0 : 1 : [ a + b | (a, b) <- zip fibs (tail fibs)]
