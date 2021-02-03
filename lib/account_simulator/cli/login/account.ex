defmodule AccountSimulator.CLI.Login.Account do
  alias AccountSimulator.Mix.Tasks.Utils.PromptHelper
  alias Mix.Shell.IO, as: Shell
  alias AccountSimulator.CLI.Currency
  alias AccountSimulator.CLI.Login.AccountConsult
  alias alias AccountSimulator.CLI.Menu.ChoiceTransactions

  def create do
    create_user(standard_user())
  end

  # Inicia o processo de criar conta.
  defp create_user(users) do
    Shell.cmd("clear")

    PromptHelper.prompt_message("Crie sua conta, insira um nome de usuário: ")
    |> create_user(users)
  end

  # É feita uma verificação no input do usuário, valida se foi digitadas apenas letras pelo mesmo.
  defp create_user(user, users) do
    case Regex.run(~r/^[a-zA-Z]+$/, user) do
      nil ->
        Shell.cmd("clear")
        Shell.info("Digite apenas letras para criação do usuário.")
        Shell.prompt("Clique ENTER para tentar novamente.")
        create_user(users)

      _ ->
        new_user?(users, user)
    end
  end

  # É feita uma verificação na estrutura de dados para confirmar se o usuário existe, retorna se estiver o mesmo já estiver na base.
  defp new_user?(users, user) do
    case AccountConsult.get_user?(PromptHelper.string_atom(user), users) do
      :error ->
        Shell.cmd("clear")
        Shell.info("Usuário #{user} criado com sucesso.")
        Shell.prompt("Após clicar no ENTER você irá ser logado automaticamente.")
        Shell.cmd("clear")

        new_automatic(
          add_user(users, PromptHelper.string_atom(user)),
          PromptHelper.string_atom(user)
        )

      _ ->
        Shell.prompt("O usuário #{user} já possui conta, clique ENTER para tentar novamente.")
        create_user(users)
    end
  end

  # Realiza o login automaticamente após o passo de adicionar a conta na estrutura de dados.
  defp new_automatic(new_data_users, user) do
    ChoiceTransactions.option_transactions(new_data_users, user)
  end

  # Adiciona a conta na estrutura de contas que já existe atualmente.
  defp add_user(users, user) do
    Keyword.put(users, user, Currency.new())
  end

  def standard_user do
    [
      francisca: Currency.new(),
      bank_lopes: Currency.new(),
      klinsmann: Currency.new(),
      lopes: Currency.new(),
      paula: Currency.new()
    ]
  end
end
