defmodule AccountSimulator.Mix.CLI.Login.ChoiceLogin do
  alias Mix.Shell.IO, as: Shell
  alias AccountSimulator.CLI.Menu.Menu
  alias NimbleCSV.RFC4180, as: CSVParser

  def option_action(chosen_menu_item) do
    case chosen_menu_item do
      %Menu{id: :login, label: _} -> Shell.info("Login...")
      %Menu{id: :create_user, label: _} -> Shell.info("Cadastrar...")
    end
  end
end
