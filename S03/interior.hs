interior [] = []
interior [x] = []
interior xs = tail $ init xs

main = do
    a <- readLn :: IO [Int]
    print $ interior a