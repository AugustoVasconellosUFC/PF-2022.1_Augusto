import Data.List
inserir n [] = [n]
inserir n (x:xs) = if n <= x then n:(x:xs) else x:(inserir n xs)

main = do
    a <- readLn :: IO Int
    b <- readLn :: IO [Int]
    print $ inserir a b