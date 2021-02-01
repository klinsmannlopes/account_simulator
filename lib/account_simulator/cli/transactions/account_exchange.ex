defmodule AccountSimulator.Mix.CLI.Trasactions.AccountExchange do
  def remove_currency(users, user, currency, value) do
    put_in (users[user])[currency], (users[user])[currency] - value
  end

  def add_currency(users, user, currency, value) do
    #Critico.montante?(value)
    put_in (users[user])[currency], (users[user])[currency] + value
  end
end