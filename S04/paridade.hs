paridade a = odd $ trues 0 a
  where 
    trues t [] = t
    trues t (x:xs) = if x then trues (t+1) xs else trues t xs

main = do
    a <- readLn :: IO [Bool]
    print $ paridade a