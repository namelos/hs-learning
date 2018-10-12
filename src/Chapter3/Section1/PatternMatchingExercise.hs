module Chapter3.Section1.PatternMatchingExercise where

import Chapter3.Section1.PatternMatching

-- what's the result of this match?
result =
  case (Cons 1 (Cons 2 (Cons 3 (Cons 4 (Cons 5 Empty))))) of
    (Cons x (Cons 2 (Cons 3 _))) -> x
    Empty -> 42
    (Cons x (Cons y (Cons 3 (Cons 4 _)))) -> x + y
    (Cons h t) -> h + sum t
    _ -> 101
