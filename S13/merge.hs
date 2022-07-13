import Data.List
merge [] b = b
merge a [] = a
merge a b
  | head a <= head b = (head a):(merge (tail a) b)
  | head a > head b = (head b):(merge a (tail b))

main = do
    a <- readLn :: IO [Int]
    b <- readLn :: IO [Int]
    print $ merge a b