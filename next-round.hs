main = do
       firstLine  <- getLine
       secondLine <- getLine
       let firstLineNumberList  = convertToNum (words firstLine)
       let secondLineNumberList = convertToNum (words secondLine)
       print $ foo secondLineNumberList (firstLineNumberList!!1)
       return ()
 where
   convertToNum = map (read::String->Int)  

foo :: [Int] -> Int -> Int
foo [] _ = 0
foo (x:xs) min | x > min && (x > 0)   = 1 + foo xs min
               | otherwise             =     foo xs min

main2=interact$show.s.map read.words
s(_:k:x)=sum[1|i<-x,x!!(k-1)<=i,i>0]
