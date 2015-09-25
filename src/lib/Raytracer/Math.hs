
module Raytracer.Math
  (
    Vector3(..)
  ) where

data Vector3 = Vector3 Double Double Double deriving (Show)

instance Eq Vector3 where
  (==) (Vector3 lhx lhy lhz) (Vector3 rhx rhy rhz)
    = (lhx == rhx) && (lhy == rhy) && (lhz == rhz)
