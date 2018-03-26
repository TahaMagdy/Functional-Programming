main = do
    weightNumber <- readAInt
    let result = foo weightNumber  -- * You cannot name some thing without `let`
    putStr $ result

foo x | x == 2    = "NO"      -- test case :"D
      | even x    = "Yes"
      | otherwise = "NO"
 
readAInt :: IO Int
readAInt = readLn


{- Reading Specific datatype from stdin
 -
 - readLn as the type: Read a => IO a. It reads a line from the user, and then parses the string into type a. What is type a? It is whatever you want (as long as it is an instance of Read). For example:
 -
 - readAInt :: IO Int
 - readAInt = readLn
 -
 - readABool :: IO Bool
 - readABool = readLn
 -}
