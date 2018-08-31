module Chapter2.Section5.PolymorhphicFunction where


{- Monomorphic Function -}

findFirstString :: String -> [String] -> Int -- can only find String from [String]
findFirstString key ss = loop 0
  where
    loop n
      | n >= length ss = -1                -- | starts a guard clause
      | ss !! n == key = n                 -- similar to if..else if..else in most languages
      | otherwise      = loop $ n + 1      -- but still an expression


{- Polymorphic Function -}

findFirst :: Eq a => a -> [a] -> Int -- lowercase indicates generic type variables
findFirst key as = loop 0
  where
    loop n
      | n >= length as = -1
      | as !! n == key = n         -- a must be an instance of Eq to use ==
      | otherwise      = loop $ n + 1