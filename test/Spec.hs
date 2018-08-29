import Test.Hspec

main :: IO ()
main = hspec $ do
  describe "test" $ do
    it "should works" $ do
      (1 + 1) `shouldBe` 2