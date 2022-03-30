module LuciansLusciousLasagna (elapsedTimeInMinutes, expectedMinutesInOven, preparationTimeInMinutes) where

expectedMinutesInOven :: Int
expectedMinutesInOven = 40

preparationTimeInMinutes :: Int -> Int
preparationTimeInMinutes layers = 2 * layers

elapsedTimeInMinutes :: Int -> Int -> Int
elapsedTimeInMinutes layers time = (preparationTimeInMinutes layers) + time

main = print (elapsedTimeInMinutes 3 20)
