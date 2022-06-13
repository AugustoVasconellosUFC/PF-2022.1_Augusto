ehPrimo a = try 2
  where 
    try x 
      | x < a = test
      | otherwise = True
        where 
          test 
            | rem a x > 0 = try (x+1)
            | otherwise = False

expoente pot base = expo pot 0 
  where
    expo p e
      | p > 0 && rem p base == 0 = expo (quot p base) (e+1)
      | otherwise = e

factors a 
  | ehPrimo a = [(a,1)] 
  | otherwise = filter (\(_,e) -> e > 0) $ zip primos (map (expoente a) primos)
    where primos = filter ehPrimo [2..a]
    

main = do
    a <- readLn :: IO Int
    print $ factors a