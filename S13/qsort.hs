import Data.List
qsort [] = []
qsort (x:xs) = (qsort (filter (<x) xs)) ++ [x] ++ (qsort (filter (>=x) xs))

main = do
    a <- readLn :: IO [Int]
    print $ qsort a