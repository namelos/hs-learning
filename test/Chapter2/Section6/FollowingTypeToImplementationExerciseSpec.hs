module Chapter2.Section6.FollowingTypeToImplementationExerciseSpec where

import Test.Hspec
import Chapter2.Section6.FollowingTypeToImplementationExercise

spec :: Spec
spec = do
  describe "curry" $ do
    it "curries an function" $ do
      let nonCurriedAdd (a, b) = a + b
        in curry' nonCurriedAdd 1 2 `shouldBe` 3

  describe "uncurry" $ do
    it "uncurries an function" $ do
      let curriedAdd a b = a + b
        in (uncurry' curriedAdd) (1, 2) `shouldBe` 3

  describe "compose" $ do
    it "composes functions" $ do
      compose' (+ 1) (* 2) 3 `shouldBe` 7

