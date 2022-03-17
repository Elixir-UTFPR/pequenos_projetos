defmodule Secrets do
  def secret_add(valor) do
    fn x -> x + valor end
  end

  def secret_subtract(valor) do
    fn x -> x - valor end
  end

  def secret_multiply(valor) do
    fn x -> x * valor end
  end

  def secret_divide(valor) do
    fn x -> div(x, valor) end
  end

  def secret_and(valor) do
    fn x -> Bitwise.band(x, valor) end
  end

  def secret_xor(valor) do
    fn x -> Bitwise.bxor(x, valor) end
  end

  def secret_combine(function_1, function_2) do
    fn x -> function_2.(function_1.(x)) end
  end
end
