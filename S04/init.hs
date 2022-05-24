primeiros [] = []
primeiros xs = init xs

main = do
    a <- readLn :: IO [Int]
    print $ primeiros a