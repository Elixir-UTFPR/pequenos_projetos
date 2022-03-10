defmodule Matematica do
  def fatorial(0), do: 1
  def fatorial(n), do: n * fatorial(n - 1)

  def fibonacci(1), do: 1
  def fibonacci(2), do: 1
  def fibonacci(n) when is_integer(n) and n > 0, do: fibonacci(n - 1) + fibonacci(n - 2)

  def fibonacci_tr(n) when is_integer(n) and n > 0 do
    fibonacci_tr(n, 0, 1)
  end

  defp fibonacci_tr(0, valor1, _valor2) do
    valor1
  end

  defp fibonacci_tr(n, valor1, valor2) do
    fibonacci_tr(n - 1, valor2, valor1 + valor2)
  end
end
