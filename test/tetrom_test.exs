defmodule TetromTest do
  use ExUnit.Case
  doctest Tetrom

  test "greets the world" do
    assert Tetrom.hello() == :world
  end
end
