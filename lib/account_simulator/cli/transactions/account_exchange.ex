defmodule AccountSimulator.Mix.CLI.Trasactions.AccountExchange do
  alias Mix.Shell.IO, as: Shell
  alias AccountSimulator.Mix.CLI.Errors.Exception
  alias AccountSimulator.Mix.CLI.Trasactions.AccountTransactions
  alias AccountSimulator.CLI.Currency

  # Removendo dinheiro de uma moeda específica.
  def remove_currency(users, user, currency, value) do
    put_in (users[user])[currency], (users[user])[currency] - value
  end

  # Adicionando dinheiro de uma moeda específica.
  def add_currency(users, user, currency, value) do
    Exception.amount?(value)
    put_in (users[user])[currency], (users[user])[currency] + value
  end

  # Fluxo para relializar o câmbio das moedas. 
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
    new_data_users = currency_exchange(users, user, currency_input, currency_output, value)
    Shell.cmd("clear")
    Shell.info("Foi realizado o câmbio entre as moedas #{currency_input} => #{currency_output}")
    Shell.prompt("Aperte ENTER para voltar ao menu de transações")
    new_data_users
  end

  def currency_exchange(users, user, currency_input, currency_output, value) do
    weight_input = get_weight(currency_input)
    weight_output = get_weight(currency_output)
    add_currency(remove_currency(users, user, currency_input, value), user, currency_output, calculation_exchange(rate(weight_input, weight_output), value))
  end

  # Verifica saldo e pega moeda digitada.
  def get_currency_console(users, user) do
    currency = AccountTransactions.currency(user, users)
    AccountTransactions.check_balance_currency(currency, users, user)
    currency
  end

  # Monstrando para usuário a primeira moeda.
  defp print_currency(currency, "first") do
    Shell.info("Primeira moeda: #{currency}.")
  end

  # Monstrando para usuário a segunda moeda.
  defp print_currency(currency, "second") do
    Shell.info("Segunda moeda: #{currency}.")
  end

  # Checando se as moedas são as mesmas.
  def check_currency_exchange?(currency_input, currency_output) do
    if currency_input == currency_output do
      :error
    end
  end

  # Obtem o peso da moeda
  def get_weight(currency) do
    Currency.info()[currency].weight
  end

  # Divide os pesos das moedas.
  def rate(weight_input, weight_output) do
    weight_input / weight_output 
  end

  # Calcula o valor a ser depositado.
  def calculation_exchange(rate, value) do
    trunc(rate * value)
  end
end