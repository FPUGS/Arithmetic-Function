defmodule ArithmeticTest do
  use ExUnit.Case
  import Arithmetic

  test "add" do
    assert arith(1, '+', 1) == 2
    assert arith(-5, '+', 89) == 84
  end

  test "subtract" do
    assert arith(5, '-', 6) == -1
    assert arith(54, '-', 32) == 22
  end

  test "multiply" do
    assert arith(7, '*', 10) == 70
    assert arith(8, '*', -4) == -32
  end

  test "divide" do
    assert arith(9, '/', 3) == 3
    assert arith(10, '/', 2) == 5
  end
end
