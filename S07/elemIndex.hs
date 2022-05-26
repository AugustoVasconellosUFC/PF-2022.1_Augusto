myelemIndex a b = myelemIndex' a b 0
  where
    myelemIndex' _ [] _ = Nothing
    myelemIndex' v (x:xs) i
      | x == v = Just i
      | otherwise = myelemIndex' v xs (i+1)

main = do
    a <- readLn :: IO Int
    b <- readLn :: IO [Int]
    print $ myelemIndex a b