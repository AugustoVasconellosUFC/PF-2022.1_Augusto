selec _ [] = []
selec xs (y:ys)
  | y < length xs = xs!!y : selec xs ys
  | otherwise = selec xs ys

main = do
    a <- getLine
    b <- readLn :: IO [Int]
    print $ selec a b