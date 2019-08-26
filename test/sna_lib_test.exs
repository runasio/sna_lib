defmodule SnaLibTest do
 use ExUnit.Case
  doctest SnaLib

  test "create a new SnaLib" do
    assert SnaLib.new() == %SnaLib{}
  end
      
end
