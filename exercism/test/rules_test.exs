defmodule RulesTest do
  use ExUnit.Case

  test "Tarefa 1" do
    refute Rules.eat_ghost?(false, true)
  end

  test "Tarefa 2" do
    assert Rules.score?(true, true)
    assert Rules.score?(false, true)
  end

  test "Tarefa 3" do
    assert Rules.lose?(false, true)
    refute Rules.lose?(true, true)
    refute Rules.lose?(true, false)
    refute Rules.lose?(false, false)
  end

  test "Tarefa 4" do
    refute Rules.win?(false, true, false)
    assert Rules.win?(true, true, true)
    assert Rules.win?(true, true, false)
    assert Rules.win?(true, false, false)
  end
end
