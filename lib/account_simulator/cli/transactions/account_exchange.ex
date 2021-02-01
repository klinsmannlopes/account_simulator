defmodule AccountSimulator.Mix.CLI.Trasactions.AccountExchange do
  alias AccountSimulator.Mix.CLI.Errors.Exception

  def remove_currency(users, user, currency, value) do
    put_in (users[user])[currency], (users[user])[currency] - value
  end

  def add_currency(users, user, currency, value) do
    Exception.amount?(value)
    put_in (users[user])[currency], (users[user])[currency] + value
  end
end