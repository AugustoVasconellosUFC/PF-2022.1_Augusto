import Data.List

gerador1 = gerador 0
  where 
    gerador x
      | x > 0 = x:gerador (-x)
      | otherwise = x:gerador ((-x)+1)

gerador2 = unfoldr (\x -> if x > 0 then Just (x,-(x+1)) else Just (x,-(x-1))) 1

gerador3 = iterate (*2) 1

gerador4 x = unfoldr(\x -> if x > 0 then Just (x, (quot x 2)) else Nothing) x

main = do
    print $ gerador4 1000