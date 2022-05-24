--splitints a = (filter odd a, filter (not.odd) a)

splitints a = (filter (<5) a, filter (not.(<5)) a)

main = do
    a <- readLn :: IO [Int]
    print $ splitints a