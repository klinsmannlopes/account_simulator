defmodule AccountSimulator.Mix.Tasks.Utils.PromptHelper do
  alias Mix.Shell.IO, as: Shell

  def prompt_message(msg) do
    Shell.prompt(msg)
    |> String.trim()
  end

  def string_atom(msg) do
    msg = String.trim(msg)
    String.to_atom(msg)
  end
end
