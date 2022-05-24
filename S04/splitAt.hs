divide a b = divlst [] a
  where
    divlst xs ys
      | length xs == b = (xs,ys)
      | otherwise = divlst (xs++[head ys]) (tail ys)

main = do
    a <- readLn :: IO [Int]
    b <- readLn :: IO Int
    print $ divide a b