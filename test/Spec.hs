import Lib
import Test.Hspec

main :: IO ()
main = hspec $ do
  describe "test" $ do
    it "should works" $ do
      (1 + 1) `shouldBe` 2

  describe "add" $ do
    it "should add 1 2 equals 3" $ do
      add 1 2 `shouldBe` 3