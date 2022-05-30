isPalind a = a == reverse a

main = do
    a <- getLine
    print $ isPalind a