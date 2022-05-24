swap xs i1 i2 = if indValidos then swp [] else xs
  where
    indValidos = i1 < length xs && i2 < length xs
    swp ys 
      | length ys >= length xs = ys
      | length ys == i1 = swp (ys++[xs!!i2])
      | length ys == i2 = swp (ys++[xs!!i1])
      | otherwise = swp (ys++[xs!!length ys])

main = do
    a <- readLn :: IO [Int]
    b <- readLn :: IO Int
    c <- readLn :: IO Int
    print $ swap a b c