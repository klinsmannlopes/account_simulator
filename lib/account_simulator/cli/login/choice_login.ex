defmodule AccountSimulator.Mix.CLI.Login.ChoiceLogin do
  alias Mix.Shell.IO, as: Shell
  alias AccountSimulator.CLI.Menu.Menu
  alias AccountSimulator.CLI.Login.Login
  alias NimbleCSV.RFC4180, as: CSVParser

  def perfom_login(chosen_menu_item) do
    case chosen_menu_item do
      %Menu{id: :login, label: _} -> login_user()
      %Menu{id: :create_user, label: _} -> Shell.info("Cadastrar...")
    end
  end

  defp login_user do
    Login.login()
  end
end
