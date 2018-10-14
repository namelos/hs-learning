module Chapter2.Section6.FollowingTypeToImplementation where


{-
  partial1 takes a function which takes tuple
  and return a function of one argument as its result

  First, given signature:
    partial1 :: ((a, b) -> c) -> a -> (b -> c)
  The result type is a function b -> c

  So it takes a parameter: \b -> ...
  We can start writing:
    partial1 f a = \b -> ...
  Finally, c is the return type of returned function,
  and the only way to get type c is to call the function in parameter:
    f (a, b)

  So the final implementation would be:
-}

partial1 :: ((a, b) -> c) -> a -> (b -> c)
partial1 f a = \b -> f (a, b)
