defmodule Mix.Tasks.Start do
  use Mix.Task

  @shortdoc "Start [Account Simulator]"
  def run(_), do: AccountSimulator.init()
end
