module Chapter3.Section1.LinkedListSpec where

import Chapter3.Section1.LinkedList
import Test.Hspec

spec :: Spec
spec = do
  describe "linked list" $ do
    context "sum" $ do
      it "should be 0 when given Empty" $ do
        sum' Empty `shouldBe` 0
      it "should be 6 when given 1,2,3,4" $ do
        sum'
          (Cons 1 $ Cons 2 $ Cons 3 $ Cons 4 Empty)
          `shouldBe` 10
          
    context "product" $ do
      it "should be 1 when given Empty" $ do
        product' Empty `shouldBe` 1
      it "should be 24 when given 1,2,3,4" $ do
        product'
          (Cons 1 $ Cons 2 $ Cons 3 $ Cons 4 Empty)
          `shouldBe` 24