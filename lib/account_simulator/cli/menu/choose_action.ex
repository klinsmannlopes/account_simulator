defmodule AccountSimulator.Mix.CLI.Menu.ChooseAction do
  alias Mix.Shell.IO, as: Shell
  alias AccountSimulator.CLI.Structs.Menu
  alias AccountSimulator.CLI.Login.Login
  alias AccountSimulator.Mix.CLI.Trasactions.AccountTransactions
  alias AccountSimulator.Mix.Tasks.Utils.PromptHelper
  alias AccountSimulator.CLI.Menu.ChoiceTransactions
  alias AccountSimulator.Mix.CLI.Trasactions.AccountExchange
  alias AccountSimulator.CLI.Login.Account

  # Realiza a ação do menu de login.
  def perfom_login(chosen_menu_item) do
    case chosen_menu_item do
      %Menu{id: :login, label: _} -> login_user()
      %Menu{id: :create_user, label: _} -> create_user()
    end
  end

  # Realiza a ação do menu de transações.
  def perfom_transactions(chosen_menu_item, user, users) do
    case chosen_menu_item do
      %Menu{id: :balance, label: _} -> balance(users, user)
      %Menu{id: :balance_currency, label: _} -> balance_currency(users, user)
      %Menu{id: :deposit, label: _} -> deposit(users, user)
      %Menu{id: :transfer, label: _} -> transfer(users, user)
      %Menu{id: :exchange, label: _} -> exchange(users, user)
    end
  end

  # Ação de login.
  defp login_user do
    Login.login()
  end

  # Ação de criar conta.
  defp create_user() do
    Account.create()
  end

  # Imprime no console o saldo do cliente em cada moeda que possui.
  defp balance(users, user) do
    Shell.cmd("clear")
    Shell.info("Esse e seu saldo nas seguintes moedas abaixo")
    AccountTransactions.get_balance(user, users)
    PromptHelper.prompt_message("Pressione ENTER para voltar ao menu da conta...")
    ChoiceTransactions.option_transactions(users, user)
  end

  # Imprime no console o saldo do cliente em na moeda que o mesmo passou via console.
  defp balance_currency(users, user) do
    Shell.cmd("clear")
    AccountTransactions.balance_currency(user, users)
    PromptHelper.prompt_message("Pressione ENTER para voltar ao menu da conta...")
    ChoiceTransactions.option_transactions(users, user)
  end

  # Deposita na conta do cliente em sua moeda específica.
  defp deposit(users, user) do
    AccountTransactions.value_deposit(
      user,
      users,
      AccountTransactions.currency(user, users),
      AccountTransactions.value()
    )
    |> ChoiceTransactions.option_transactions(user)
  end

  # Transação de transferência.
  defp transfer(users, user) do
    AccountTransactions.transfer(users, user)
    |> ChoiceTransactions.option_transactions(user)
  end

  # Transação de cambio de moedas.
  defp exchange(users, user) do
    AccountExchange.currency_change(users, user)
    |> ChoiceTransactions.option_transactions(user)
  end
end
