defmodule SnaLib.Meta do

  @moduledoc """

  SnaLib.Meta contains the metadata of SnaLib.Data. Those two
  data-structure are linked together and are dependent.

  """
  
  defstruct [
    :content
  ]
  
  @spec new() :: SnaLib.Meta.t
  def new(), do: new([])

  @spec new(opts :: list) :: SnaLib.Meta.t
  def new(_opts), do: %SnaLib.Meta{}
  
end
