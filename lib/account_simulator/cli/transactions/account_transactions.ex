defmodule AccountSimulator.Mix.CLI.Trasactions.AccountTransactions do
  alias Mix.Shell.IO, as: Shell
  alias AccountSimulator.Mix.Tasks.Utils.PromptHelper
  alias AccountSimulator.CLI.Menu.ChoiceTransactions
  alias AccountSimulator.CLI.Login.AccountConsult

  # Modulo para realizar transações entre contas.

  # Devolve o saldo de todas as moedas da conta.
  def get_balance(usuario, usuarios) do
    Keyword.get(usuarios, usuario)
    |> Enum.map_join("\n", fn {k, v} -> "#{k}:#{v}" end)
    |> Shell.info()
  end

  # Devolve o saldo de acordo com a moeda.
  def currency_balance(users, user, currency) do
    Keyword.get(users[user], currency)
  end

  # Faz toda ação para realizar o depósito.
  def value_deposit(user, users, currency, value) do
    Shell.cmd("clear")
    
    new_data_users = put_in (users[user])[currency], (users[user])[currency] + value

    total = currency_balance(new_data_users, user, currency)
    Shell.info("Seu saldo atual é de #{total} #{currency}")
    PromptHelper.prompt_message("Pressione ENTER para voltar ao menu da conta...")
    new_data_users
  end

  # Pegar o valor do depósito.
  def value  do
    PromptHelper.prompt_message("Qual quantia gostaria de depositar?: ")
    |> value_integer()
  end

  # Transformar em inteiro.
  defp value_integer(value) do
    case Regex.run(~r/^(0*[1-9][0-9]*)$/, value) do
      nil ->
        Shell.info("Digite apenas números positivos.")
        Shell.prompt("Pressione Enter para tentar novamente.")
        value()
      _ -> String.to_integer(value)
    end
  end

  # Pegar a moeda digitada pela usuário.
  def currency(user, users) do
    Shell.cmd("clear")
    PromptHelper.prompt_message("Qual seria a moeda?: ")
    |> PromptHelper.string_atom_upcase()
    |> check_currency(user, users)
  end

  # Checar a moeda.
  def check_currency(currency, user, users) do
    case Keyword.get(users[user], currency) do
      nil ->
        Shell.info("Digite uma sigla válida, de acordo com a ISO 4217, ex: USD, BRL ...")
        Shell.prompt("Pressione Enter para tentar novamente.")
        currency(user, users)
      _ ->
        currency
    end
  end

  # 
  def transfer(users, user) do
    Shell.cmd("clear")
    verify_account(users, user)
    currency_client = currency(user, users)
    check_balance_currency(currency_client, users, user)
  end

  # Verifica na conta se na moeda passada possui salso.
  def check_balance_currency(currency, users, user) do
    if currency_balance(users, user, currency) <= 0 do
      Shell.info("Você não possui quantia com essa moeda, realize um depósito em sua conta.")
      Shell.prompt("Pressione Enter para voltar ao menu de transações.")
      ChoiceTransactions.option_transactions(users, user)
    end
  end

  # Verifica a conta que vai receber a transferência.
  def verify_account(users, user) do
    if verify_money?(users, user) == :error do
      ChoiceTransactions.option_transactions(users, user)
    end

    PromptHelper.prompt_message("Qual conta desejaria realizar a transferência?")
    |> PromptHelper.string_atom()
    |> compare_account(user, users)
  end

  defp compare_account(account_user, user, users) do
    if account_user == user do
      Shell.info("Você não pode realizar transferência para sua conta.")
      Shell.prompt("Pressione Enter para tentar novamente.")
      transfer(users, user)
    end
    account_exists(account_user, user, users)
  end

  # Passar conta loga e conta digitada
  defp account_exists(account_user, user, users) do
    case AccountConsult.get_user?(user,users) do
        :error ->
          Shell.cmd("clear")
          Shell.error("Essa conta não existe!")
          Shell.prompt("Pressione Enter para tentar novamente.")
          transfer(users, user)
        _ ->
          account_user
       end
  end

  # Verifica se o usuário possui algum dinheiro em sua conta.
  def verify_money?(users, user) do
    
    PromptHelper.som_total_values(Keyword.values(users[user]))
    |> case do
         :error ->
           Shell.info("Você não possui dinheiro, faça um deposito antes de continuar")
           Shell.prompt("Pressione Enter para voltar ao menu de transações.")
           ChoiceTransactions.option_transactions(users, user)
         nil ->
           true
       end
  end
end
