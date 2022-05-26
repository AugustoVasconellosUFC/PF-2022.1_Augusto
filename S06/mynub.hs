mynub xs = mynub' xs []
  where 
    mynub' [] ys = ys
    mynub' (x:xs) ys 
      | notElem x ys = mynub' xs (ys++[x])
      | otherwise = ys

main = do
    a <- readLn :: IO [Int]
    print $ mynub a