module Chapter2.Section5.PolymorphicFunctionExerciseSpec where

import Test.Hspec
import Chapter2.Section5.PolymorphicFunctionExercise

spec :: Spec
spec = do
  describe "is sorted" $ do
    it "returns True for a sorted array by given predicate" $ do
      isSorted (<) [1,2,3] `shouldBe` True
    it "returns False for an array which is not sorted" $ do
      isSorted (<) [1,2,2] `shouldBe` False
