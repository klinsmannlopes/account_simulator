defmodule AccountSimulator.CLI.Main do
  
  # Início do sistema.
  
  alias Mix.Shell.IO, as: Shell

  def start_app do
    Shell.cmd("clear")
    welcome_message()
    Shell.prompt("Pressione ENTER para continuar...")
    # Mostrar o menu de login.
    start_menu_choice()
  end

  defp welcome_message do
    Shell.info("========= Bank Lopes =========")
    Shell.info("Seja bem-vindo ao Banco lopes!")
    Shell.info("==============================")
  end

  defp start_menu_choice do
    AccountSimulator.CLI.Menu.ChoiceLogin.start()
  end
end
