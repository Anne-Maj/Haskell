module Example (sayHi, doubleMe, doubleSmallNumber, circleArea) where



  sayHi name = "Hello "++name++", how are you?"


  doubleMe x = x + x


  doubleSmallNumber x = if x > 100
                          then x
                          else x*2

  addThree :: Int -> Int -> Int -> Int
  addThree x y z = x + y + z


  circleArea :: Floating a => a -> a
  circleArea radius  = pi * radius * radius


  bmiTell :: (RealFloat a) => a -> a -> String
  bmiTell weight height
      | bmi <= 18.5 = "You're underweight"
      | bmi <= 25.0 = "You're weight is in the normal range"
      | bmi <= 30.0 = "You're overweight"
      | otherwise   = "You're more than overweight"
      where bmi = weight / height ^ 2
      -- fx bmiTell 50 1.60

  --let lostNumbers = [4,8,15,16,23,42]
  --length [5,4,3,2,1]
  --reverse [5,4,3,2,1]
  --sum [5,2,1,6,3,2,5,7]
{-
  ghci> [x*2 | x <- [1..10]]
  [2,4,6,8,10,12,14,16,18,20]

  fst (8,11)
  snd ("Wow", False)


-}