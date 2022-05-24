import Data.List

iguais a b c 
  | x < 3 = 4 - x
  | otherwise = 0
  where x = length (nub [a,b,c])

main = do
    a <- readLn :: IO Int
    b <- readLn :: IO Int
    c <- readLn :: IO Int
    print $ iguais a b c