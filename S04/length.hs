total a = tot a 0
  where
    tot [] t = t
    tot (x:xs) t = tot xs (t + 1)

main = do
    a <- readLn :: IO [Int]
    print $ total a