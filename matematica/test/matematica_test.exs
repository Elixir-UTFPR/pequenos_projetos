defmodule MatematicaTest do
  use ExUnit.Case

  describe "Testes para Fatorial" do
    test "O fatorial de 1 é 1" do
      assert Matematica.fatorial(1) == 1
    end

    test "O fatorial de 2 é 2" do
      assert Matematica.fatorial(2) == 2
    end

    test "O fatorial de 3 é 6" do
      assert Matematica.fatorial(3) == 6
    end
  end

  # hd(Tuple.to_list( :timer.tc(&Matematica.fatorial/1, [100000])))

  describe "Testes para Fibonacci" do
    test "Fibonacci de 1 é 1" do
      assert Matematica.fibonacci(1) == 1
    end

    test "Fibonacci de 2 é 1" do
      assert Matematica.fibonacci(2) == 1
    end

    test "Fibonacci de 3 é 2" do
      assert Matematica.fibonacci(3) == 2
    end
  end
end
