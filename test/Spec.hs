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

  describe "isSorted" $ do
    it "should return True when isSorted (<) [1,2,3]" $ do
      isSorted (<) [1,2,3] `shouldBe` True
    
    it "should return False when isSorted (<) [1,3,2]" $ do
      isSorted (<) [1,3,2] `shouldBe` False

  describe "fib" $ do
    it "fib 10 should be 55" $ do
      fib 10 `shouldBe` 55