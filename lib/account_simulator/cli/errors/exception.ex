defmodule AccountSimulator.Mix.CLI.Errors.Exception do
  alias Mix.Shell.IO, as: Shell
  
  # Verificando valor passado.
  def amount?(value) do
    unless value > 0 do
      System.stop(0)
      Shell.info("Dinheiro insuficiente")
    end
  end
end