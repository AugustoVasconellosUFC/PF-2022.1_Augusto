ehPrimo a = try 2
  where 
    try x 
      | x < a = test
      | otherwise = True
        where 
          test 
            | rem a x > 0 = try (x+1)
            | otherwise = False

main = do
    a <- readLn :: IO Int
    print $ ehPrimo a