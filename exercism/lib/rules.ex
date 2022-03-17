defmodule Rules do
  def eat_ghost?(valor1, valor2) do
    valor1 and valor2
  end

  def score?(valor1, valor2) do
    valor1 or valor2
  end

  def lose?(power_pellet_ativo, tocando_um_fantasma) do
    not power_pellet_ativo and tocando_um_fantasma
  end

  def win?(comeu_todos_os_pontos, power_pellet_ativo, tocando_um_fantasma) do
    comeu_todos_os_pontos and not lose?(power_pellet_ativo, tocando_um_fantasma)
  end
end
