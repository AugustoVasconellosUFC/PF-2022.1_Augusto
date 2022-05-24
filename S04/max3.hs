max3 a b c
  | 2 * a > b + c = a
  | 2 * b > a + c = b
  | otherwise = c

main = do
    a <- readLn :: IO Int
    b <- readLn :: IO Int
    c <- readLn :: IO Int
    print $ max3 a b c