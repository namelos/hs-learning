module Chapter2.Section5.PolymorphicFunctionExercise where

isSorted :: (a -> a -> Bool) -> [a] -> Bool
isSorted _ [] = True
isSorted _ [_] = True
isSorted p (x:y:l) = p x y && isSorted p (y:l)