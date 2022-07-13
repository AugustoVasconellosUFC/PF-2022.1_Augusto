import Data.List

compac a = compacter as []
  where
    compacter (x:xs) (y:ys)
      | null (x:xs) = (y:ys)
      | length y == 1 && x == head y = compacter xs ([x,1]:ys)
      | length y > 1 && x == head y = compacter xs ([x,((y!!1)+1)]:ys)
      | otherwise = compacter xs ([x]:(y:ys))
    as = sortBy (flip compare) a

main = do
    a <- readLn :: IO [Int]
    print $ compac a