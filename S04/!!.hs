elemento a b 
  | a >= 0 = b!!a
  | otherwise = b!!(a + length b)

main = do
    a <- readLn :: IO Int
    b <- readLn :: IO [Int]
    print $ elemento a b