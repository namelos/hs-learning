module Chapter2.Section4.HigherOrderFunctionExerciseSpec where

import Chapter2.Section4.HigherOrderFunctionExercise
import Test.Hspec

spec :: Spec
spec = do
  describe "fib" $ do
    it "fib 1 = 1" $ do
      fib 1 `shouldBe` 1
    it "fib 2 = 1" $ do
      fib 2 `shouldBe` 1
    it "fib 10 = 55" $ do
      fib 10 `shouldBe` 55
