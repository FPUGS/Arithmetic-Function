mathe :: String -> Int -> Int -> Int
mathe op x y = case op of
  "add" -> x + y
  "sub" -> x - y
  "mul" -> x * y
  -- http://stackoverflow.com/questions/14656762/no-instance-for-fractional-int-arising-from-a-use-of
  -- Int is not a fractorial, so I couldn't use x / y.
  -- try it in ghci: :t (/)
  "div" -> x `div` y
