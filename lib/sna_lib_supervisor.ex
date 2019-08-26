defmodule SnaLib.Supervisor do

  @moduledoc """

  SnaLib.Supervisor is the main supervisor to control all SnaLib
  application.

  """
  
  use Supervisor

  @doc """

  Start application SnaLib.Supervisor 

  """
  def start_link() do
    start_link([])
  end

  def start_link(args) do
    Supervisor.start_link(__MODULE__, args, name: __MODULE__)
  end

  @doc """

  stop application SnaLib.Supervisor

  """
  
  def stop() do
    Supervisor.stop(__MODULE__)
  end
  
  def init(_args) do
    children = []
    Supervisor.init(children, strategy: :one_for_one)
  end
end
