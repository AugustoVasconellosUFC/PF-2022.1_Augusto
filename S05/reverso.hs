reverso xs = rev xs []
  where
    rev [] ys = ys
    rev (x:xs) ys = rev xs (x:ys)

main = do
    a <- readLn :: IO [Int]
    print $ reverso a