defmodule SnaLib.Rule do

  @moduledoc """
  
  SnaLib.Rule contains information about how the data and meta-data
  can be modified.
  
  """
  
  defstruct [
    :content
  ]

  @spec new() :: SnaLib.Rule.t
  def new(), do: new([])

  @spec new(opts :: list()) :: SnaLib.Rule.t
  def new(_opts), do: %SnaLib.Rule{}
  
end
