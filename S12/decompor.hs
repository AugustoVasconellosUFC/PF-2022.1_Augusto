separa valor = if valor == 0 then [0] else takeAteFim listaInf
  where
    takeAteFim (x:xs)= if fst x == 0 then [snd x] else takeAteFim xs++[snd x]
    listaInf = iterate (\(numero,resto) -> (quot numero 10, rem numero 10)) (quot valor 10, rem valor 10)

main = do
    print $ separa 0
    print $ separa 123
    print $ separa 51234