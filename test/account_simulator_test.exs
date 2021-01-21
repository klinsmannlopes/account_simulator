defmodule AccountSimulatorTest do
  use ExUnit.Case
  doctest AccountSimulator

  test "greets the world" do
    assert AccountSimulator.hello() == :world
  end
end
