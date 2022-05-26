mytails [] = []
mytails xs = xs : mytails (tail xs)

main = do
    a <- readLn :: IO [Int]
    print $ mytails a