module Day1Spec where

import Day1
import Test.Hspec

spec :: Spec
spec = do
  describe "fib" $ do
    it "should return 10 when given 55" $ do
      fib 10 `shouldBe` 55