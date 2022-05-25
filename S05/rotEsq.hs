rotEsq n xs
  | n > 0 = rotEsq (n-1) (tail xs ++ [head xs])
  | otherwise = xs

main = do
    a <- readLn :: IO Int
    b <- getLine
    print $ rotEsq a b