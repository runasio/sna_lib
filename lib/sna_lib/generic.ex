defmodule SnaLib.Generic do

  @moduledoc """

  SnaLib.Generic is a GenServer used to expend different kind of
  functions based on the kind of data entering in the mailbox.

  """

  use GenServer

  def init(args), do: {:ok, args}

  def handle_call(_, _, state), do: {:reply, :ok, state}
  
  def handle_cast(_, state), do: {:noreply, state}
  
end
