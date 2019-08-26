defmodule SnaLib do
  @moduledoc """
  Documentation for SnaLib.
  """

  def new() do
    %{
      ref: :erlang.make_ref(),
      data: %SnaLib.Data{},
      meta: %SnaLib.Meta{},
      rule: %SnaLib.Rule{},
      cred: %SnaLib.Credential{}
    }
  end
end
