defmodule AccountSimulator.Mix.CLI.Trasactions.AccountTransactions do
  alias Mix.Shell.IO, as: Shell
  alias AccountSimulator.Mix.Tasks.Utils.PromptHelper

  # Modulo para realizar transações entre contas.

  def get_balance(usuario, usuarios) do
    Keyword.get(usuarios, usuario)
    |> Enum.map_join("\n", fn {k, v} -> "#{k}:#{v}" end)
    |> Shell.info()
  end

  def currency_balance(users, user, currency) do
    Keyword.get(users[user], currency)
  end

  def value_deposit(user, users, currency, value) do
    Shell.cmd("clear")
    
    new_data_users = put_in (users[user])[currency], (users[user])[currency] + value

    total = currency_balance(new_data_users, user, currency)
    Shell.info("Seu saldo atual é de #{total} #{currency}")
    PromptHelper.prompt_message("Pressione ENTER para voltar ao menu da conta...")
    new_data_users
  end

  def value  do
    PromptHelper.prompt_message("Qual quantia gostaria de depositar?: ")
    |> value_integer()
  end

  defp value_integer(value) do
    case Regex.run(~r/^(0*[1-9][0-9]*)$/, value) do
      nil ->
        Shell.info("Digite apenas números positivos.")
        Shell.prompt("Pressione Enter para tentar novamente.")
        value()
      _ -> String.to_integer(value)
    end
  end

  def currency(user, users) do
    Shell.cmd("clear")
    PromptHelper.prompt_message("Qual seria a moeda?: ")
    |> PromptHelper.string_atom_upcase()
    |> check_currency(user, users)
  end

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
end
