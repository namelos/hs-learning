module Day2Spec where

import Day2
import Test.Hspec
import Prelude

spec :: Spec
spec = do
  describe "abs'" $ do
    it "abs' -1 = 1" $ do
      abs' (-1) `shouldBe` 1
    it "abs' 1 = 1" $ do
      abs' 1 `shouldBe` 1
    it "abs' 0 = 0" $ do
      abs' 0 `shouldBe` 0

  describe "formatAbs" $ do
    it "should format abs' function input and output" $ do
      formatAbs (-1) `shouldBe` "The absolute value of -1 is 1"

  describe "factorial" $ do
    it "factorial 5 = 120" $ do
      factorial 5 `shouldBe` 120
    it "factorial 1 = 1" $ do
      factorial 1 `shouldBe` 1
    it "factorial 0 = 1" $ do
      factorial 0 `shouldBe` 1

  exercise

exercise =
  describe "fib" $ do
    it "fib 10 = 55" $ do
      fib 10 `shouldBe` 55
    it "fib 1 = 1" $ do
      fib 1 `shouldBe` 1
    it "fib 2 = 1" $ do
      fib 2 `shouldBe` 1
