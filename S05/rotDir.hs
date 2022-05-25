rotDir n xs
  | n > 0 = rotDir (n-1) (last xs : init xs)
  | otherwise = xs

main = do
    a <- readLn :: IO Int
    b <- getLine
    print $ rotDir a b