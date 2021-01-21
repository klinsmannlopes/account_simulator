defmodule AccountSimulator do
  @moduledoc """
  Documentation for `AccountSimulator`.
  """

  @doc """
  Início do sistema.

  ## Examples

      iex> AccountSimulator.hello()
      :world

  """
  def init do
    AccountSimulator.CLI.Main.start_app()
  end
end
