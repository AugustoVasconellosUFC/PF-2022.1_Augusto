mymap f [] = []
mymap f (x:xs) = f x : mymap f xs

main = do
    print $ mymap (+1) [1, 2, 3]
    print $ mymap (odd) [6,2,1]