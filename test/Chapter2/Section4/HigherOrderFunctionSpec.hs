module Chapter2.Section4.HigherOrderFunctionSpec where

import Chapter2.Section4.HigherOrderFunction
import Test.Hspec

spec :: Spec
spec = do
  describe "factorial" $ do
    it "factorial 1 = 1" $ do
      factorial 1 `shouldBe` 1
    it "factorial 5 = 120" $ do
      factorial 5 `shouldBe` 120

  describe "factorialWithNoTailRec" $ do
    it "factorial 1 = 1" $ do
      factorialWithNoTailRec 1 `shouldBe` 1
    it "factorial 5 = 120" $ do
      factorialWithNoTailRec 5 `shouldBe` 120

  describe "formatFactorial" $ do
    it "should return a string describe the factroial of the value" $ do
      formatFactorial 5 `shouldBe` "The factorial of 5 is 120"

  describe "foramtResult" $ do
    it "should return a string describe the given function result of applying a value" $ do
      formatResult factorial "Factorial" 5 `shouldBe` "The Factorial of 5 is 120"