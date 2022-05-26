produtoEscalar xs ys = foldl (\s (x,y) -> s++[x*y]) [] (zip xs ys) 

main = do
    a <- readLn :: IO [Int]
    b <- readLn :: IO [Int]
    print $ produtoEscalar a b