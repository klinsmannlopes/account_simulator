defmodule AccountSimulator.Mix.CLI.Trasactions.AccountExchange do
  alias AccountSimulator.Mix.CLI.Errors.Exception

  # Removendo dinheiro de uma moeda específica.
  def remove_currency(users, user, currency, value) do
    put_in (users[user])[currency], (users[user])[currency] - value
  end

  # Adicionando dinheiro de uma moeda específica.
  def add_currency(users, user, currency, value) do
    Exception.amount?(value)
    put_in (users[user])[currency], (users[user])[currency] + value
  end
end