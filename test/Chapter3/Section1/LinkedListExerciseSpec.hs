module Chapter3.Section1.LinkedListExerciseSpec where

import Test.Hspec
import Chapter3.Section1.LinkedListExercise
import Chapter3.Section1.LinkedList

spec :: Spec
spec = do
  it "should be 1" $ do
    result `shouldBe` 1
