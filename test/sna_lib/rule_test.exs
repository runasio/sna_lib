defmodule SnaLib.RuleTest do
  use ExUnit.Case
  doctest SnaLib.Rule

  test "create a new data-structure" do
    assert SnaLib.Rule.new() == %SnaLib.Rule{}
  end
end
