defmodule Logica do
  @doc """
  Função que recebe dois argumentos que são valores lógicos (ou seja,
  só podem ser :verdadeiro ou :falso) e retorna a conjunção lógica ("e") dos valores recebidos.
  """
  @spec e(:falso | :verdadeiro, :falso | :verdadeiro) :: :falso | :verdadeiro
  def e(:verdadeiro, :verdadeiro), do: :verdadeiro
  def e(:falso, :verdadeiro), do: :falso
  def e(:verdadeiro, :falso), do: :falso
  def e(:falso, :falso), do: :falso

  def ou(:falso, :falso) do
    :falso
  end

  def ou(:verdadeiro, :falso) do
    :verdadeiro
  end

  def ou(:falso, :verdadeiro) do
    :verdadeiro
  end

  def ou(:verdadeiro, :verdadeiro) do
    :verdadeiro
  end

  def nao(:verdadeiro), do: :falso
  def nao(:falso), do: :verdadeiro

  @spec implica(:falso | :verdadeiro, :falso | :verdadeiro) :: :falso | :verdadeiro
  def implica(:verdadeiro, :verdadeiro), do: :verdadeiro
  def implica(:falso, :verdadeiro), do: :verdadeiro
  def implica(:verdadeiro, :falso), do: :falso
  def implica(:falso, :falso), do: :verdadeiro
end
