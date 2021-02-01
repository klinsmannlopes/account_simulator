defmodule AccountSimulator.Mix.CLI.Menu.ChooseAction do
  alias Mix.Shell.IO, as: Shell
  alias AccountSimulator.CLI.Structs.Menu
  alias AccountSimulator.CLI.Login.Login
  alias AccountSimulator.Mix.CLI.Trasactions.AccountTransactions
  alias AccountSimulator.Mix.Tasks.Utils.PromptHelper
  alias AccountSimulator.CLI.Menu.ChoiceTransactions

  # Realiza a ação do menu de login.
  def perfom_login(chosen_menu_item) do
    case chosen_menu_item do
      %Menu{id: :login, label: _} -> login_user()
      %Menu{id: :create_user, label: _} -> Shell.info("Cadastrar...")
    end
  end

  # Realiza a ação do menu de transações.
  def perfom_transactions(chosen_menu_item, user, users) do
    case chosen_menu_item do
      %Menu{id: :balance, label: _} -> balance(users, user)
      %Menu{id: :deposit, label: _} -> deposit(users, user)
      %Menu{id: :transfer, label: _} -> transfer(users, user)
      %Menu{id: :exchange, label: _} -> Shell.info("Câmbio de moedas...")
    end
  end

  defp login_user do
    Login.login()
  end

  # Imprime no console o saldo do cliente em cada moeda que possui.
  defp balance(users, user) do
    Shell.cmd("clear")
    Shell.info("Esse e seu saldo nas seguintes moedas abaixo")
    AccountTransactions.get_balance(user, users)
    PromptHelper.prompt_message("Pressione ENTER para voltar ao menu da conta...")
    ChoiceTransactions.option_transactions(users, user)
  end

  # Deposita na conta do cliente em sua moeda específica.
  defp deposit(users, user) do
    AccountTransactions.value_deposit(user, users, AccountTransactions.currency(user, users) , AccountTransactions.value())
    |> ChoiceTransactions.option_transactions(user)
  end

  defp transfer(users, user) do
    AccountTransactions.transfer(users, user)
    |> ChoiceTransactions.option_transactions(user)
  end
end
