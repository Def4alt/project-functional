module LibSpec where

import SpecHelper

spec :: Spec
spec = 
  describe "number classifier" $ do
    context "with 18" $
      it "isn't perfect" $
        isPerfect 18 `shouldBe` False

    context "with 24" $
      it "is abundant" $
        isAbundant 24 `shouldBe` True

    context "with 5" $
      it "is deficiend" $
        isDeficiend 5 `shouldBe` True

main :: IO ()
main = hspec spec