defmodule Logica do

  def e(:verdadeiro,:verdadeiro) do
    :verdadeiro
  end
  def e(_,_) do
    :falso
  end
  def ou(:falso,:falso) do
    :falso
  end
  def ou(_,_) do
    :verdadeiro
  end

  def nao(:verdadeiro), do: :falso
  def nao(:falso), do: :verdadeiro
end
