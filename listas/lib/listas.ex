defmodule Listas do

  def soma([]) do
    0
  end
  def soma([cabeca | cauda]) do
    cabeca + soma(cauda)
  end
end
