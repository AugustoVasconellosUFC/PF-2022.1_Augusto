pertence _ [] = False
pertence e (x:xs)
  | e == x = True
  | otherwise = pertence e xs

main = do
    a <- readLn :: IO Int
    b <- readLn :: IO [Int]
    print $ pertence a b