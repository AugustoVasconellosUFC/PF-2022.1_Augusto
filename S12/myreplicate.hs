myreplicate cont x = if cont > 1 then x : myreplicate (cont - 1) x else [x]

main = do
    print $ myreplicate 4 0 == [0, 0, 0, 0]
    print $ myreplicate 2 True == [True, True]
    print $ myreplicate 3 "banana" == ["banana", "banana", "banana"]