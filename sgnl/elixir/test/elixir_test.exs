defmodule ArithmeticTest do
  use ExUnit.Case
  import Arithmetic

  test "add" do
    assert arith(1, '+', 1) == 2
    assert arith(5, '+', 89) == 94
  end
end
