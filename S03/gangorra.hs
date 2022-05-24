gangorra p_1 c_1 p_2 c_2
  | e > d = -1
  | e < d = 1
  | otherwise = 0
  where
    e = p_1 * c_1
    d = p_2 * c_2

main = do
    a <- readLn :: IO Int
    b <- readLn :: IO Int
    c <- readLn :: IO Int
    d <- readLn :: IO Int
    print $ gangorra a b c d