line n = linha (primelem (n-1)) []
  where
    primelem 0 = 1
    primelem n = n + primelem (n-1)
    linha x xs 
      | length xs < n = linha (x+1) (xs++[x])
      | otherwise = xs

main = do
    a <- readLn :: IO Int
    print $ line a