module Chapter3.Section3.DataSharing where
import Chapter3.Section1.LinkedList

{-
  Functional programming data structure is immutable.
  If we add or remove an element from a list,
  like from Cons 1 $ Cons 2 $ Cons 3 $ Cons 4 Empty

-}

append :: List' a -> List' a -> List' a
append Empty ys = ys
append (Cons h t) ys = Cons h (append t ys)