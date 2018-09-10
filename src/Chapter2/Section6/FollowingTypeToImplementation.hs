module Chapter2.Section6.FollowingTypeToImplementation where

-- partial1 takes a function which takes tuple
-- and return a function of one argument as its result

partial1 :: ((a, b) -> c) -> a -> (b -> c)
partial1 f a = \b -> f (a, b)

-- the result type of partial1 is b -> c
-- so it takes a parameter: b \b -> ...
-- and then call f as it should: f (a, b)
-- the implementation should be \b -> f (a, b)