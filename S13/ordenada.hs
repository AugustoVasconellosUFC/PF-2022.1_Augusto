import Data.List
ordenada [x] = True
ordenada (x:xs) = if x <= head xs then ordenada xs else False

main = do
    a <- readLn :: IO [Int]
    print $ ordenada a