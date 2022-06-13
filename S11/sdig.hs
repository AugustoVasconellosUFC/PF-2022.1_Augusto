sdig a = sdigit a 0
  where 
    sdigit x y 
      | x > 0 = sdigit (quot x 10) (y+(rem x 10))
      | otherwise = y

main = do
    a <- readLn :: IO Int
    print $ sdig a