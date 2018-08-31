module Chapter2.Section1.SimpleProgramSpec where

import Chapter2.Section1.SimpleProgram
import Test.Hspec

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
