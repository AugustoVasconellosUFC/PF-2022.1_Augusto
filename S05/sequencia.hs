sequencia a b = seqnc 0 []
  where
    seqnc n xs 
      | n < a = seqnc (n+1) (xs++[b+n])
      | otherwise = xs

main = do
    a <- readLn :: IO Int
    b <- readLn :: IO Int
    print $ sequencia a b