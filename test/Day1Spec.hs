module Day1Spec where

import Day1
import Test.Hspec
import Prelude

spec :: Spec
spec = do
    describe "chanllenges" $ do
        describe "product" $ do
            it "should return 120 when given 5" $ do
                product' 5 `shouldBe` 120

        describe "compose" $ do
            it "should return 12 when compose inc, double and given 5" $ do
                (compose' double inc $ 5) `shouldBe` 12

        describe "filter" $ do
            it "should return [1,3] when filter odd" $ do
                filter' odd [1,2,3] `shouldBe` [1,3]

    describe "fib" $ do
        it "should return 10 when given 55" $ do
            fib 10 `shouldBe` 55

    describe "incThenDouble" $ do
        it "should return 12 when given 5" $ do
            incThenDouble 5 `shouldBe` 12

    describe "map" $ do
        it "should map to [2,3,4] when map (+1) [1,2,3]" $ do
            map' inc [1,2,3] `shouldBe` [2,3,4]


