defmodule AccountSimulator.Mix.Tasks.Utils.PromptHelper do
  alias Mix.Shell.IO, as: Shell

  # Captura a entrada do usuário.
  def prompt_message(msg) do
    Shell.prompt(msg)
    |> String.trim()
  end

  # Tranforma uma string em um atom.
  def string_atom(msg) do
    msg = String.trim(msg)
    String.to_atom(msg)
  end
end
