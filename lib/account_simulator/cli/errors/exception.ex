defmodule AccountSimulator.Mix.CLI.Errors.Exception do
  
  # Verificando valor passado.
  def amount(value) do
    unless value > 0 do
      PromptHelper.prompt_message("Dinheiro insuficiente")
      System.stop(0)
    end
  end
end