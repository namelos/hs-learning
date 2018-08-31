module Chapter2.Section5.PolymorhphicFunctionSpec where

import Chapter2.Section5.PolymorhphicFunction
import Test.Hspec

spec :: Spec
spec = do
  describe "findFirstString" $ do
    it "should return first matched string index" $ do
      findFirstString "beta" ["alpha", "beta", "gamma"] `shouldBe` 1
    it "should not find the second match" $ do
      findFirstString "beta" ["alpha", "beta", "beta"] `shouldBe` 1
    it "should return -1 if target value could not be found" $ do
      findFirstString "omega" ["alpha", "beta", "gamma"] `shouldBe` -1

  describe "findFirst" $ do
    it "should return first matched value index" $ do
      findFirst (== 2) [1,2,3] `shouldBe` 1
    it "should not find the second match" $ do
      findFirst (== 2) [1,2,2] `shouldBe` 1
    it "should return -1 if target value could not be found" $ do
      findFirst (== 5) [1,2,3] `shouldBe` -1

  describe "firstThreeIndex" $ do
    it "should be 2" $ do
      firstThreeIndex `shouldBe` 2