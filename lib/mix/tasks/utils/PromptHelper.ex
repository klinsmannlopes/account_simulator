defmodule AccountSimulator.Mix.Tasks.Utils.PromptHelper do
  alias Mix.Shell.IO, as: Shell

  defp prompt_message(msg) do
    Shell.prompt(msg)
    |> String.trim()
  end
end
