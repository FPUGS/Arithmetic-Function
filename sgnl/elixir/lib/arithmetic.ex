defmodule Arithmetic do
  def arith(op1, add, op2) when add == '+', do: op1 + op2

  def arith(op1, sub, op2) when sub == '-', do: op1 - op2

  def arith(op1, multi, op2) when multi == '*', do: op1 * op2

  def arith(op1, div, op2) when div == '/', do: op1 / op2
end
