import Data.Maybe

upper a = map up a
  where
    up x 
      | elem x ['a'..'z'] = fromJust $ lookup x tbl
      | otherwise = x
      where tbl = zip ['a'..'z'] ['A'..'Z']

main = do
    a <- getLine
    print $ upper a