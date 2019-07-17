defmodule SnaLibTest do
  use ExUnit.Case
  doctest SnaLib

  test "greets the world" do
    assert SnaLib.hello() == :world
  end
end
