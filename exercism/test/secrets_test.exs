defmodule SecretsTest do
  use ExUnit.Case

  test "Chama Secrets.secret_add/1 com 2" do
    adder = Secrets.secret_add(2)

    assert adder.(2) == 4
  end

  test "Chama Secrets.secret_add/1 com 3" do
    adder = Secrets.secret_add(3)

    assert adder.(2) == 5
  end

  test "Chama Secrets.secret_subtract/1 com 2" do
    subtractor = Secrets.secret_subtract(2)

    assert subtractor.(3) == 1
  end

  test "Chama Secrets.secret_multiply/1 com 2" do
    multiplier = Secrets.secret_multiply(7)

    assert multiplier.(3) == 21
  end

  test "Chama Secrets.secret_divide/1 com 3" do
    divider = Secrets.secret_divide(3)

    assert divider.(32) == 10
  end

  test "Chama Secrets.secret_and/1 com 1" do
    ander = Secrets.secret_and(1)

    assert ander.(2) == 0
  end

  test "Chama Secrets.secret_and/1 com 5" do
    ander = Secrets.secret_and(5)

    assert ander.(6) == 4
  end

  test "Chama Secrets.secret_xor/1 com 1" do
    xorer = Secrets.secret_xor(1)
    xorer.(3)

    assert xorer.(3) == 2
  end

  test "Chama Secrets.secret_xor/1 com 10" do
    xorer = Secrets.secret_xor(10)

    assert xorer.(12) == 6
  end

  test "Chama Secrets.secret_combine/1 com 2 funções" do
    multiply = Secrets.secret_multiply(7)
    divide = Secrets.secret_divide(3)
    combined = Secrets.secret_combine(multiply, divide)

    assert combined.(6) == 14
  end
end
