defmodule SnaLib.Data do

  @moduledoc """
  
  SnaLib.Data is the representation of raw data. For exemple, a
  textual content can be seen as a string field associated with
  different kind of metadata (e.g. author or date). This module offers
  all the primitive to ensure the data is well crafted and is an
  internal standard representation for other funtions.

  """

  defstruct [
    content: "",
    type: :raw
  ]

  @doc """

  Create a new SnaLib.Data data-structure with default value in it.

  """
  @spec new() :: SnaLib.t()
  def new(), do: new([])


  @doc """

  Create a new SnaLib.Data data-structure with different kind of
  options.

  """
  @spec new(opts :: list()) :: SnaLib.t
  def new(_opts), do: %SnaLib.Data{}

  
  @doc """

  Append content to SnaLib.Data data-structure.

  """
  @spec content(struct :: SnaLib.t, data :: String.t)
  :: SnaLib.t
  def content(struct, data), do: content(struct, data, [])

  @spec content(struct :: SnaLib.t, data :: String.t, target :: any())
  :: SnaLib.t
  def content(struct, data, target), do: content(struct, data, target, [])

  @spec content(struct :: SnaLib.t, data :: String.t, target :: any(), opts :: list())
  :: SnaLib.t
  def content(%SnaLib{ data: struct } = t, data, _target, _opts) do
    c = struct |> Map.put(:content, data)
    %SnaLib{t| data: c}
  end

  
  @doc """
  
  Configure the type of data contained in SnaLib.Data, it could be raw
  text or different format like html, markdown, asciidoc or more.
  
  """
  @spec type(strict :: SnaLib.t, data :: atom())
  :: SnaLib.t
  def type(struct, data), do: type(struct, data, [])

  @spec type(struct :: SnaLib.t, data :: atom(), target :: any())
  :: SnaLib.t
  def type(struct, data, target), do: type(struct, data, target, [])

  @spec type(struct :: SnaLib.t, data :: atom(), target :: any(), opts :: list())
  :: SnaLib.t
  def type(%SnaLib{ data: struct } = t, data, _target, _opts) do
    c = struct |> Map.put(:type, data)
    %SnaLib{t| data: c}
  end
  
end
