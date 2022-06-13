base a b = converte a []
  where 
    converte x xs 
      | x > 0 = converte (quot x b) (text!!(rem x b) : xs)
      | otherwise = xs
        where text = "0123456789ABCDEFGHIJKLMNOPQRSTUVWXYZ"

main = do
    a <- readLn :: IO Int
    b <- readLn :: IO Int
    print $ base a b