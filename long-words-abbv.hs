import Control.Monad (forM)

main = do
    wordsNumber <- readInt
    wordsList <- forM [1 .. wordsNumber] (\n -> do 
        aWord <- getLine
        return aWord)
    let abbvList = map abbrv wordsList 
    mapM putStrLn abbvList
    return ()

abbrv :: String -> String
abbrv x | fromIntegral (length x) > 10   = abbvString
        | otherwise   = x
  where
  abbvString = [ x |  x <- show((head x)) ++ show(length $ drop 2 x)  ++  show((last x)), x /= '\'']

readInt :: IO Int
readInt = readLn

-- This problem taught  me 3 important things
