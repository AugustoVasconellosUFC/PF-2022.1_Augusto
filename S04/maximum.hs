maior [a] = a
maior a = ma a 0
  where
    ma [] m = m
    ma (x:xs) m = if x > m then ma xs x else ma xs m

main = do
    a <- readLn :: IO [Int]
    print $ maior a