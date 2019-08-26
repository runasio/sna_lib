defmodule SnaLib do
  @moduledoc """

  SnaLib is an high-level representation of commonly used features for
  different kind of social networks in the large definition. SnaLib
  offers you a consistent data-structure, pushed on different pipeline
  to be compatible with many end-point.

  This project is a work in progress one, lot of things will change in
  the future. Please don't use that in production environment at this
  stage of the development.

  """

  use Application

  defstruct [
    data: %SnaLib.Data{},
    meta: %SnaLib.Meta{},
    rule: %SnaLib.Rule{},
    options: []
  ]


  @doc """

  Start SnaLib application by starting the main application supervisor
  called SnaLib.Supervisor.

  """
  def start(_type, _args) do
    SnaLib.Supervisor.start_link()
  end

  
  @doc """

  Stop the main SnaLib application supervisor, called
  SnaLib.Supervisor.

  """
  def stop() do
    SnaLib.Supervisor.stop()
  end

  
  @doc """

  Create a new SnaLib data-structure. This structure contains all
  information about an entry and how to alter it.

  """
  @spec new() :: SnaLib.t
  def new() do
    new([])
  end

  @spec new(opts :: list()) :: SnaLib.t
  def new(_opts), do: %SnaLib{}
  
end
