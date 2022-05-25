unico e xs = length [ x | x <- xs, x == e ] == 1

main = do
    a <- readLn :: IO Int
    b <- readLn :: IO [Int]
    print $ unico a b