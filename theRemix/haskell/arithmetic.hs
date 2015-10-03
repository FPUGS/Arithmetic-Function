arith op = if op == "add"
  then (\a b -> a + b)
  else if op == "sub"
  then (\a b -> a - b)
  else if op == "mul"
  then (\a b -> a * b)
  else if op == "div"
  then (\a b -> a / b)
  else (\a b -> 0) -- default to nothing

main = putStrLn( unlines [
  show ( arith "add" 2 3 ), 
  show ( arith "sub" 20 5 ),
  show ( arith "mul" 2 5 ),
  show ( arith "div" 30 2 ) ] )