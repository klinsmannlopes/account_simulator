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

  ##defp show_friend(friend) do
  ##  friend
  ##  |> Scribe.print(data: [{"Nome", :name}, {"email", :email}, {"Celular", :phone}], style: Scribe.Style.GithubMarkdown)
  ##end

  ##defp show_friends(list_friends) do
  ##  list_friends
  ##  |> Scribe.console(data: [{"Nome", :name}, {"email", :email}, {"Celular", :phone}], style: Scribe.Style.GithubMarkdown)
  ##end
end
