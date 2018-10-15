module Chapter2.Section4.HigherOrderFunctionExerciseSpec where

import Test.Hspec
import Chapter2.Section4.HigherOrderFunctionExercise

spec :: Spec
spec = do
  describe "fib" $ do
    testFib 0 0
    testFib 1 1
    testFib 2 1
    testFib 3 2
    testFib 4 3
    testFib 5 5
    testFib 10 55

testFib param expect =
  it msg $ do
    fib param `shouldBe` expect
  where
    msg = "returns" ++ show expect ++ "when given" ++ show param
