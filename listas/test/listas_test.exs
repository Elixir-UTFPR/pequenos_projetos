defmodule ListasTest do
  use ExUnit.Case
  doctest Listas

  test "Soma todos os valores de uma lista" do
    assert Listas.soma([1,2,3,5]) == 11
    assert Listas.soma([1,2,3,5,6]) == 17
  end
end
