defmodule AccountSimulator.Mix.CLI.Trasactions.AccountExchange do
  alias Mix.Shell.IO, as: Shell
  alias AccountSimulator.Mix.CLI.Errors.Exception
  alias AccountSimulator.Mix.CLI.Trasactions.AccountTransactions

  # Removendo dinheiro de uma moeda específica.
  def remove_currency(users, user, currency, value) do
    put_in (users[user])[currency], (users[user])[currency] - value
  end

  # Adicionando dinheiro de uma moeda específica.
  def add_currency(users, user, currency, value) do
    Exception.amount?(value)
    put_in (users[user])[currency], (users[user])[currency] + value
  end

  def currency_change(users, user) do
    currency_input = get_currency_console(users, user)
    print_currency(currency_input, "first")
    value = AccountTransactions.value_exchange()
    AccountTransactions.check_value(currency_input, users, user, value)
    currency_output = AccountTransactions.currency_exchange(user, users)
    print_currency(currency_output, "second")
    if check_currency_exchange?(currency_input, currency_output) == :error do
      Shell.prompt("Não é possível realizar câmbio para a mesma moeda. Digite as moedas novamente, aperte ENTER para continuar.")
      currency_change(users, user)
    end
    
  end

  def get_currency_console(users, user) do
    AccountTransactions.verify_money?(users, user)
    currency = AccountTransactions.currency(user, users)
    AccountTransactions.check_balance_currency(currency, users, user)
    currency
  end

  defp print_currency(currency, "first") do
    Shell.info("Primeira moeda: #{currency}.")
  end

  defp print_currency(currency, "second") do
    Shell.info("Segunda moeda: #{currency}.")
  end

  def check_currency_exchange?(currency_input, currency_output) do
    if currency_input == currency_output do
      :error
    end
  end
end