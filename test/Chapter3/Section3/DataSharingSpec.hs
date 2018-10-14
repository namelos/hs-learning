module Chapter3.Section3.DataSharingSpec where

import Test.Hspec
import Chapter3.Section1.LinkedList
import Chapter3.Section3.DataSharing

spec :: Spec
spec = do
  describe "append" $ do
    it "should return a list combined by two lists" $ do
      let l1 = Cons 1 $ Cons 2 Empty
          l2 = Cons 3 $ Cons 4 Empty
          expected = Cons 1 $ Cons 2 $ Cons 3 $ Cons 4 Empty
        in append l1 l2 `shouldBe` expected
