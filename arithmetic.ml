(* arithmetic.ml *)

(* Given a basic operator (add, sub, mul, and div), and two operands, return
 * the result of the operator applied to the operands.
 *)

open Printf;;

type operator = Add | Sub | Mul | Div;;
type 'a expression = Expression of operator * 'a * 'a;;

let compute op a b =
  match op with
  | Add -> a + b
  | Sub -> a - b
  | Mul -> a * b
  | Div -> a / b;;

let opsym op =
  match op with
  | Add -> '+'
  | Sub -> '-'
  | Mul -> '*'
  | Div -> '/';;

let run (Expression(op, a, b)) =
  printf "%d %c %d = %d\n" a (opsym op) b (compute op a b);;

let main () =
  let expressions = [
    Expression(Add, 20, 22);
    Expression(Sub, 60, 18);
    Expression(Mul, 14, 3);
    Expression(Div, 126, 3)
  ] in
  List.iter run expressions;
  exit 0;;
main ();;

