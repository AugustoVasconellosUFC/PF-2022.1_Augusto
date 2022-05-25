menores n xs 
  | length xs <= n = xs
  | otherwise = menores n $ filter (/=m) xs
    where m = maximum xs

main = do
    a <- readLn :: IO Int
    b <- readLn :: IO [Int]
    print $ menores a b