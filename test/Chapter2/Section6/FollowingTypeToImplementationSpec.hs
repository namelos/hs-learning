module Chapter2.Section6.FollowingTypeToImplementationSpec where

import Chapter2.Section6.FollowingTypeToImplementation
import Test.Hspec

add :: (Int, Int) -> Int
add (x, y) = x + y

spec :: Spec
spec = do
  describe "partial1" $ do
    context "add" $ do
      it "receives a tuple" $ do
        add (1, 2) `shouldBe` 3
    it "should partial apply a function which receives a tuple" $ do
      partial1 add 1 2 `shouldBe` 3