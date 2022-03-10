defmodule LogicaTest do
  use ExUnit.Case

  describe "Testes para a Negação (não)" do
    test "A negação de Verdadeiro é Falso" do
      assert Logica.nao(:verdadeiro) == :falso
    end
    test "A negação de Falso é Verdadeiro" do
      assert Logica.nao(:falso) == :verdadeiro
    end

  end

  describe "Testes para a Conjunção (e)" do
    test "A conjunção (e) de Verdadeiro e Verdadeiro é Verdadeiro" do
      assert Logica.e(:verdadeiro, :verdadeiro) == :verdadeiro
    end

    test "Todas as outras possibilidades da conjunção dão Falso" do
      assert Logica.e(:verdadeiro, :falso) == :falso
      assert Logica.e(:falso, :verdadeiro) == :falso
      assert Logica.e(:falso, :falso) == :falso
    end
  end

  describe "Testes para a Disjunção (ou)" do
    test "A disjunção (ou) de Falso e Falso é Falso" do
      assert Logica.ou(:falso, :falso) == :falso
    end

    test "Todas as outras possibilidades da disjuncão dão Verdadeiro" do
      assert Logica.ou(:verdadeiro, :falso) == :verdadeiro
      assert Logica.ou(:falso, :verdadeiro) == :verdadeiro
      assert Logica.ou(:verdadeiro, :verdadeiro) == :verdadeiro
    end
  end


end
