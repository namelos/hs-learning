module Chapter3.Section3.DataSharing where
import Chapter3.Section1.LinkedList

{-

-}

append :: List' a -> List' a -> List' a
append Empty ys = ys
append (Cons h t) ys = Cons h (append t ys)