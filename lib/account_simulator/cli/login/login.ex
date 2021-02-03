defmodule AccountSimulator.CLI.Login.Login do
  
  # Início do sistema.
  # Através desse módulo o usuário escolhe quais operações fazer.
  alias Mix.Shell.IO, as: Shell
  alias AccountSimulator.Mix.Tasks.Utils.PromptHelper
  alias AccountSimulator.CLI.Login.AccountConsult
  alias AccountSimulator.CLI.Menu.ChoiceTransactions
  alias AccountSimulator.CLI.Login.Account

  # Aqui passamos para função de acesso o dado de entrada do usuário e uma estrutura de dados default.
  def login do
    PromptHelper.prompt_message("Digite seu nome de usuário: ")
    |> PromptHelper.string_atom()
    |> access(Account.standard_user())
  end

  # Função que pega uma estrutura de dados, e na mesma realiza uma pesquisa na estrutura com o dado de entrada do usuário.
  def access(user, users) do
    case AccountConsult.get_user?(user, users) do
      :error ->
        Shell.cmd("clear")
        Shell.error("Usuário não existe!")
        Shell.prompt("Pressione ENTER para voltar a tela de login...")
        AccountSimulator.CLI.Menu.ChoiceLogin.start()
      _ ->
        ChoiceTransactions.option_transactions(users, user)
    end
  end
end
