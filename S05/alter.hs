alter n = alt 1 []
  where 
    alt i xs
      | i <= n = alt (i+1) (xs++[i,-i])
      |otherwise = xs

main = do
    a <- readLn :: IO Int
    print $ alter a