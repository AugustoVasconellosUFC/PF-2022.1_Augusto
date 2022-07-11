expoentes valor divisor = acharExp listaInf 0
  where
    acharExp (x:xs) n = if snd x /= 0 then n-1 else acharExp xs (n+1)
    listaInf = iterate (\(numero,resto) -> (quot numero divisor, resto + (rem numero divisor))) (valor, 0)

main = do
    print $ expoentes 7 2
    print $ expoentes 4 2
    print $ expoentes 8 2
    print $ expoentes 24 2
    print $ expoentes 1024 2
    print $ expoentes 150 5