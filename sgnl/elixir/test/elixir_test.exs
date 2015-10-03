defmodule ArithmeticTest do
  use ExUnit.Case
  import Arithmetic

  test "add" do
    assert arith(1, '+', 1) == 2
  end
end
