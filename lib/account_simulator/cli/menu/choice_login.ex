defmodule AccountSimulator.CLI.Menu.ChoiceLogin do
  alias Mix.Shell.IO, as: Shell
  alias AccountSimulator.CLI.Menu.ItemsLogin
  alias AccountSimulator.Mix.CLI.Menu.ChooseAction

  #Apresenta menu do login
  def start() do
    Shell.cmd("clear")
    Shell.info("Escolha uma opcao:")

    menu_itens = ItemsLogin.all()
    find_menu_itens_by_index = &Enum.at(menu_itens, &1, :error)

    menu_itens
    |> Enum.map(& &1.label)
    |> dysplay_options()
    |> generate_question
    |> Shell.prompt()
    |> parse_answer()
    |> find_menu_itens_by_index.()
    |> confirm_menu_item()
    |> confirm_message()
    |> ChooseAction.perfom_login()
  end

  #Mostra as opções no console
  defp dysplay_options(options) do
    options
    |> Enum.with_index(1)
    |> Enum.each(fn {option, index} ->
      Shell.info("#{index} - #{option}")
    end)

    options
  end

  defp generate_question(options) do
    options = Enum.join(1..Enum.count(options), ",")
    "\nQual das opções acima você escolhe? [#{options}]\n"
  end

  #Analisar a resposta e retira -1 do indice
  defp parse_answer(answer) do
    case Integer.parse(answer) do
      :error -> invalid_option()
      {option, _} -> option - 1
    end
  end

  defp invalid_option do
    Shell.cmd("clear")
    Shell.error("Opção Inválida!")
    Shell.prompt("Pressione Enter para tentar novamente.")
    start()
  end

  defp confirm_menu_item(chosen_menu_item) do
    case chosen_menu_item do
      :error -> invalid_option()
      _ -> chosen_menu_item
    end
  end

  defp confirm_message(chosen_menu_item) do
    Shell.cmd("clear")
    Shell.info("Você escolheu... [#{chosen_menu_item.label}]")

    case Shell.yes?("Confirma a ação?") do
      true -> chosen_menu_item
      false -> start()
    end
  end
end
