defmodule AccountSimulator.Mix.CLI.Menu.ChooseAction do
  alias Mix.Shell.IO, as: Shell
  alias AccountSimulator.CLI.Structs.Menu
  alias AccountSimulator.CLI.Login.Login
  alias NimbleCSV.RFC4180, as: CSVParser

  def perfom_login(chosen_menu_item) do
    case chosen_menu_item do
      %Menu{id: :login, label: _} -> login_user()
      %Menu{id: :create_user, label: _} -> Shell.info("Cadastrar...")
    end
  end

  def perfom_transactions(chosen_menu_item, usuario, usuarios) do
    case chosen_menu_item do
      %Menu{id: :balance, label: _} -> balance(usuario, usuarios)
      %Menu{id: :deposit, label: _} -> Shell.info("Depósito...")
      %Menu{id: :deposit, label: _} -> Shell.info("Tranferência...")
      %Menu{id: :deposit, label: _} -> Shell.info("Câmbio de moedas...")
    end
  end

  defp login_user do
    Login.login()
  end

  defp balance(usuario, usuarios) do
  end
end
