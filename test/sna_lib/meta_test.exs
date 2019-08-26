defmodule SnaLib.MetaTest do
  use ExUnit.Case
  doctest SnaLib.Meta

  test "create a new data-structure" do
    assert SnaLib.Meta.new() == %SnaLib.Meta{}
  end  
end
