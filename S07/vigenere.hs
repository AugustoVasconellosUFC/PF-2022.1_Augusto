import Data.Maybe

vigenere txt key = zipWith shift txt (cycle key)
  where 
    shift t k = fst (tbl !! (mod (fromJust (lookup t tbl) + fromJust (lookup k tbl)) 26))
      where 
        tbl = zip ['A'..'Z'] [0..25]

main = do
    print $ vigenere "ATACARBASESUL" "LIMAO" == "LBMCOCJMSSDCX"
    print $ vigenere "ABACATE" "A" == "ABACATE" 
    print $ vigenere "ABACATE" "B" == "BCBDBUF" 
    print $ vigenere "ABACATE" "AB" == "ACADAUE" 