defmodule AccountSimulator.CLI.Menu.ChoiceTransactions do
  alias Mix.Shell.IO, as: Shell
  alias AccountSimulator.CLI.Menu.ItensTransations
  alias AccountSimulator.Mix.CLI.Menu.ChooseAction

  #Apresenta menu da conta
  def option_transactions(usuario, usuarios) do
    Shell.cmd("clear")
    
    Shell.info("Escolha uma opcao:\n")

    menu_itens = ItensTransations.all()
    find_menu_itens_by_index = &Enum.at(menu_itens, &1, :error)

    menu_itens
    |> Enum.map(& &1.label)
    |> dysplay_options()
    |> generate_question
    |> Shell.prompt()
    |> parse_answer(usuario, usuarios)
    |> find_menu_itens_by_index.()
    |> confirm_menu_item(usuario, usuarios)
    |> confirm_message(usuario, usuarios)
    |> ChooseAction.perfom_transactions(usuario, usuarios)
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

  #Analisar a resposta e retira -1 do indice
  defp generate_question(options) do
    options = Enum.join(1..Enum.count(options), ",")
    "Qual das opções acima você escolhe? [#{options}]\n"
  end

  defp parse_answer(answer, usuario, usuarios) do
    case Integer.parse(answer) do
      :error -> invalid_option(usuario, usuarios)
      {option, _} -> option - 1
    end
  end

  defp invalid_option(usuario, usuarios) do
    Shell.cmd("clear")
    Shell.error("Opção Inválida!")
    Shell.prompt("Pressione Enter para tentar novamente.")
    option_transactions(usuario, usuarios)
  end

  defp confirm_menu_item(chosen_menu_item, usuario, usuarios) do
    case chosen_menu_item do
      :error -> invalid_option(usuario, usuarios)
      _ -> chosen_menu_item
    end
  end

  defp confirm_message(chosen_menu_item, usuario, usuarios) do
    Shell.cmd("clear")
    Shell.info("Você escolheu... [#{chosen_menu_item.label}]")

    case Shell.yes?("Confirma a ação?") do
      true -> chosen_menu_item
      false -> option_transactions(usuario, usuarios)
    end
  end
end
