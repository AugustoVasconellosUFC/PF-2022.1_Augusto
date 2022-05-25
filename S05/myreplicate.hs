myreplicate t x = listgen 0 []
  where
    listgen i xs
      | i < t = listgen (i+1) (xs++[x])
      | otherwise = xs

main = do
    print $ myreplicate 4 0
    print $ myreplicate 2 True
    print $ myreplicate 3 "banana"