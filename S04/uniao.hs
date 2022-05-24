uniao xs ys = xs ++ [ y | y <- ys , notElem y xs ]

main = do
    a <- readLn :: IO [Int]
    b <- readLn :: IO [Int]
    print $ uniao a b