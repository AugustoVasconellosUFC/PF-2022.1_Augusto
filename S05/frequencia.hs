frequencia e xs = length [ x | x <- xs, x == e ]

main = do
    a <- readLn :: IO Int
    b <- readLn :: IO [Int]
    print $ frequencia a b