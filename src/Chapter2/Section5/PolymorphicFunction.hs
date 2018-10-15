module Chapter2.Section5.PolymorphicFunction where


{- Monomorphic Function -}

findFirstString :: String -> [String] -> Int -- can only find String from [String]
findFirstString key ss = loop 0
  where
    loop n
      | n >= length ss = -1                -- | starts a guard clause
      | ss !! n == key = n                 -- similar to if..else if..else in most languages
      | otherwise      = loop $ n + 1      -- but still an expression


{- Polymorphic Function -}

findFirst :: Eq a => (a -> Bool) -> [a] -> Int -- lowercase indicates generic type variables
findFirst p as = loop 0
  where
    loop n
      | n >= length as = -1
      | p $ as !! n    = n         -- a must be an instance of Eq to use ==
      | otherwise      = loop $ n + 1

firstThreeIndex :: Int      
firstThreeIndex = findFirst (\x -> x == 3) [1,2,3,4,5,4,3,2,1]
-- anonymous function can be written as \x y -> x + y