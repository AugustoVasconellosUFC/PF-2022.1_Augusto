rev a = reverter a 0
  where 
    reverter x y 
      | x > 0 = reverter (quot x 10) ((10*y)+(rem x 10))
      | otherwise = y

main = do
    a <- readLn :: IO Int
    print $ rev a