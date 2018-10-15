module Chapter2.Section4.HigherOrderFunctionExerciseSpec where

import Test.Hspec
import Chapter2.Section4.HigherOrderFunctionExercise

spec :: Spec
spec = do
  describe "fib" $ do
    it "returns 0 when given 0" $ do
      fib 0 `shouldBe` 0
    it "returns 1 when given 1" $ do
      fib 1 `shouldBe` 1
    it "returns 1 when given 2" $ do
      fib 2 `shouldBe` 1
    it "reutrns 2 when given 3" $ do
      fib 3 `shouldBe` 2
    it "returns 3 when given 4" $ do
      fib 4 `shouldBe` 3
    it "returns 5 when given 5" $ do
      fib 5 `shouldBe` 5
    it "returns 55 when given 10" $ do
      fib 10 `shouldBe` 55
