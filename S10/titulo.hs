import Data.Char

titulo a = formatar ' ' a
  where
    formatar ' ' (x:xs) = toUpper x : formatar x xs
    formatar _ (x:xs) = toLower x : formatar x xs
    formatar ' ' [] = []
    formatar _ [] = []

main = do
    a <- getLine
    print $ titulo a