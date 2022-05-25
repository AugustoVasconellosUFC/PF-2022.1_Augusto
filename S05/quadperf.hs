quadperf a = qdp 1
  where
    qdp n
      | n * n < a = qdp (n+1)
      | n * n == a = True
      | otherwise = False

main = do
    a <- readLn :: IO Int
    print $ quadperf a