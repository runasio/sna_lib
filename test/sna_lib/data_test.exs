defmodule SnaLib.DataTest do
  use ExUnit.Case
  doctest SnaLib.Data

  test "create a new data-structure" do
    assert SnaLib.Data.new() == %SnaLib.Data{}
  end
  
  test "append text to the data-structure" do
    struct = SnaLib.new()
    append = struct |> SnaLib.Data.content("test")
    assert append.data.content == "test"
  end

  test "append a type to a content" do
    struct = SnaLib.new()
    append = struct |> SnaLib.Data.type(:raw)
    assert append.data.type == :raw
  end  
end
