module Chapter2.Section6.FollowingTypeToImplementationExercise where

curry :: ((a, b) -> c) -> (a -> b -> c)
curry f = undefined

uncurry :: (a -> b -> c) -> ((a, b) -> c)
uncurry f = undefined

compose :: (b -> c) -> (a -> b) -> (a -> c)
compose f g = undefined
