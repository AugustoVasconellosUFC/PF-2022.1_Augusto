listacc a = lacc a [] 0
  where 
    lacc [] ys s = ys
    lacc (x:xs) ys s = lacc xs (ys++[x+s]) (x+s)

main = do
    a <- readLn :: IO [Int]
    print $ listacc a