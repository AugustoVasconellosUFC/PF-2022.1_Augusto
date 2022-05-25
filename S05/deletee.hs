deletee a b = dlte b []
  where
    dlte [] ys = ys
    dlte (x:xs) ys
      | x == a = ys++xs
      | otherwise = dlte xs (ys++[x])

main = do
    a <- readLn :: IO Int
    b <- readLn :: IO [Int]
    print $ deletee a b