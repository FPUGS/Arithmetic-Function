(*
first attempt
more learning the syntax more than anything
want feedback
*)

(* a helper function for quick printing *)
let print d = Printf.printf "%d\n" d

let arith op = 
  (
    if op = "add" then 
      fun (a, b) -> a + b
    else if op = "subtract" then
      fun (a, b) -> a - b
    else if op = "multiply" then
      fun (a, b) -> a * b
    else if op = "divide" then
      fun (a, b) -> a / b
    else fun (a, b) -> 0 (* default 0 *)
  );;

print (arith "add" (1, 2));;
print (arith "subtract" (20, 5));;
print (arith "multiply" (20, 5));;
print (arith "divide" (20, 5));;

(* output ---
3
15
100
4 
----------- *)