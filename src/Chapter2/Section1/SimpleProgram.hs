module Chapter2.Section1.SimpleProgram where -- Declare a module, so that other modules can use
import Text.Printf -- Import a module to use its functions

{- A Simple Haskell Program -}

abs' :: Int -> Int -- Signature, Function abs' takes and Int return an Int
abs' n =           -- It has a Int parameter n
  if (n < 0)       -- `if..then..else` is an expression with value
  then -n
  else n           -- `else` is mandatory or there won't be any value


formatAbs :: Int -> String -- formatAbs takes and Int returns a String
formatAbs n =
  printf "The absolute value of %d is %d" n (abs' n) -- () increases precedence

-- multi args function can be directly called as `func p1 p2 pn`


main :: IO ()                     -- IO () is magical, worry about this later
main = putStrLn $ formatAbs $ -42 -- putStrLn can perform effect and print value

-- `$` lowers precedence, thus you can remove (), the above line is same as:
-- main = putStrLn (formatAbs (-42))
