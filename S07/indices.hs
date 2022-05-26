indices e xs = map snd $ filter (\(x,p) -> x == e) (zip xs [0..])

main = do
    a <- readLn :: IO Int
    b <- readLn :: IO [Int]
    print $ indices a b