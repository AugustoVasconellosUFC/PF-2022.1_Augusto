somaImpares x = sum $ filter odd x

main = do
    a <- readLn :: IO [Int]
    print $ somaImpares a