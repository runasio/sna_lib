defmodule SnaLib.Connector do
  @moduledoc """

  SnaLib.Connector is the main module to connect SnaLib datastructure
  to the outside world. 

  """

  defstruct [
    :content
  ]

  @spec new() :: SnaLib.Connector.t
  def new(), do: new([])

  @spec new(opts :: list()) :: SnaLib.Connector.t
  def new(_opts), do: %SnaLib.Connector{}
  
end
