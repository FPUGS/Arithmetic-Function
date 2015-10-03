enum Operation
{
  ADD;
  SUB;
  MUL;
  DIV;
}

class Main
{

  private static inline function arith( operation:Operation ):Int->Int->Float
  {
    return switch (operation) {
      case ADD: function (op1:Int, op2:Int):Float
        {
          return op1 + op2;
        }
      case SUB: function (op1:Int, op2:Int):Float
        {
          return op1 - op2;
        }
      case MUL: function (op1:Int, op2:Int):Float
        {
          return op1 * op2;
        }
      case DIV: function (op1:Int, op2:Int):Float
        {
          return op1 / op2;
        }
    }
  }

  public static function main(){
    
    trace( 
      arith(ADD)(2, 3),
      arith(SUB)(20, 5),
      arith(MUL)(2, 5),
      arith(DIV)(30, 2)
    );
  }
}