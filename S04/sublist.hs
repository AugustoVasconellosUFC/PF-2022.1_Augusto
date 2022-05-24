sublist i f xs = sb (mod i $ length xs) (mod f $ length xs) []
  where
    sb ind fim ys
      | ind < fim = sb (ind+1) fim (ys++[xs!!ind])
      | otherwise = ys

main = do
    a <- readLn :: IO Int
    b <- readLn :: IO Int
    c <- readLn :: IO [Int]
    print $ sublist a b c