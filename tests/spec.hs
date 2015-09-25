import Test.Hspec
import qualified Raytracer.Math as RM

-- `main` is here so that this module can be run from GHCi on its own.
-- It is not needed for automatic spec discovery.
main :: IO ()
main = hspec spec

spec :: Spec
spec = do
  describe "Raytracer.Math.Vector3 testcase" $ do
    it "Eq compliant" $ do
      let actual = RM.Vector3 1 1 1
      (actual == RM.Vector3 1 1 1) `shouldBe` True
      (actual /= RM.Vector3 1 1 2) `shouldBe` True
      (actual /= RM.Vector3 1 2 1) `shouldBe` True
      (actual /= RM.Vector3 2 1 1) `shouldBe` True  
