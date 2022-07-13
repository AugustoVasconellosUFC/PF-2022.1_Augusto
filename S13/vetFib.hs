import Data.List
vetFib a 
  | a < 1 = []
  | a == 1 = [0]
  | a == 2 = [0,1]
  | otherwise = vet ++ [(last vet) + (last (init vet))]
    where
      vet = vetFib (a-1)

main = do
    a <- readLn :: IO Int
    print $ vetFib a