fatorial a = fct 1 1
  where
    fct i p
      | i > a = p
      | otherwise = fct (i+1) (p*i)

main = do
    a <- readLn :: IO Int
    print $ fatorial a