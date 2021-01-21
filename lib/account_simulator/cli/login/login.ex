defmodule AccountSimulator.CLI.Login.Login do
  @moduledoc """
  Início do sistema.
  Através desse módulo o usuário escolhe quais operações fazer.
  """
  alias Mix.Shell.IO, as: Shell
  alias AccountSimulator.Mix.Tasks.Utils.PromptHelper
  alias AccountSimulator.CLI.Login.AccountConsult
  alias AccountSimulator.CLI.Currency


  def login do
    PromptHelper.prompt_message("Digite seu nome de usuário: ")
    |> PromptHelper.string_atom()
    |> access(standard_user())
  end

  def access(usuario,usuarios) do
    case AccountConsult.get_user?(usuario, usuarios) do
      :error ->
        Shell.cmd("clear")
        Shell.error("Usuário não existe!")
        Shell.prompt("Pressione ENTER para voltar a tela de login...")
        AccountSimulator.CLI.Menu.Choice.start()
      _ ->
        Scribe.print(usuario, style: Scribe.Style.GithubMarkdown)
    end
  end

  def standard_user do
    [maria: Currency.new(), stone: Currency.new(), john: Currency.new()]
  end

end
