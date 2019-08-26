defmodule SnaLib.Credential do

  @moduledoc """
  
  SnaLib.Credential is a special field used to store credentials or a
  representation of credentials as a lambda function. This field will
  probably disappear in the future to add a more generic and flexible
  data-structures for other actions.
  
  """
  
  defstruct [
    :content
  ]

  @spec new() :: SnaLib.Credential.t
  def new(), do: new([])

  @spec new(opts :: list()) :: SnaLib.Credential.t
  def new(_opts), do: %SnaLib.Credential{}
  
end
