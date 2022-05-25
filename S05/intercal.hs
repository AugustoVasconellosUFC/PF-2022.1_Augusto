intercal a b = inter a b []
  where
    inter [] [] s = s
    inter [] ys s = s++ys
    inter xs [] s = s++xs
    inter (x:xs) (y:ys) s = inter xs ys (s++[x,y])

main = do
    a <- readLn :: IO [Int]
    b <- readLn :: IO [Int]
    print $ intercal a b