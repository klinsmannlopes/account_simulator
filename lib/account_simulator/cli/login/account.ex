defmodule AccountSimulator.CLI.Login.Account do
  alias AccountSimulator.Mix.Tasks.Utils.PromptHelper
  alias Mix.Shell.IO, as: Shell
  alias AccountSimulator.CLI.Currency

  def create do
    create_user(standard_user())
  end

  # É feita uma verificação na estrutura de dados para confirmar se o usuário existe.
  defp create_user(users) do
    Shell.cmd("clear")
    PromptHelper.prompt_message("Crie sua conta, insira um nome de usuário: ")
    |> create_user(users)
  end

  defp create_user(user, users) do
    case Regex.run(~r/^[a-zA-Z]+$/, user) do
      nil ->
        Shell.cmd("clear")
        Shell.info("Digite apenas letras para criação do usuário.")
        Shell.prompt("Clique ENTER para tentar novamente.")
        create_user(users)
      _ -> Shell.info("Função que cria user ")
    end
  end

  def standard_user do
    [francisca: Currency.new(), stone: Currency.new(), klinsmann: Currency.new(), lopes: Currency.new(), paula: Currency.new()]
  end
end
