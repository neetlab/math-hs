module Vector where

newtype Radian x = Radian x

data Vector a = Vector a a a
    deriving (Show, Eq)

-- norm :: (Num a, Floating b) => Vector a -> b
-- norm (Vector x y z) = sqrt $ (x ** 2) + (y ** 2) + (z ** 2)

vappend :: (Num a) => Vector a -> Vector a -> Vector a
vappend (Vector x1 y1 z1) (Vector x2 y2 z2) = Vector (x1+x2) (y1+y2) (z1+z2)

vmultiply :: (Num a) => a -> Vector a -> Vector a
vmultiply k (Vector x y z) = Vector (x*k) (y*k) (z*k)

dotProd :: (Num a) => Vector a -> Vector a -> a
dotProd (Vector x1 y1 z1) (Vector x2 y2 z2) = (x1 * x2) + (y1 * y2) + (z1 * z2)

-- vangle :: (Num a) => Vector a -> Vector a -> Radian a
-- vangle (Vector x1 y1 z1) (Vector x2 y2 z2) =
--     acos $ 
