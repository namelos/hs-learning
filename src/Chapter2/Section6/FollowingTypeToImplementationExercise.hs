module Chapter2.Section6.FollowingTypeToImplementationExercise where

-- Please follow the signature and implement the functions
-- Take a guess what does the function do base on the name
-- and signature

curry' :: ((a, b) -> c) -> (a -> b -> c)
curry' f = \a b -> f (a, b)

uncurry' :: (a -> b -> c) -> ((a, b) -> c)
uncurry' f = \(a, b) -> f a b

compose' :: (b -> c) -> (a -> b) -> (a -> c)
compose' f g x = f $ g $ x
