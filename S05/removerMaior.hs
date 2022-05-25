removerMaior xs = filter (/= maximum xs) xs

main = do
    a <- readLn :: IO [Int]
    print $ removerMaior a