defmodule AccountSimulator.CLI.Menu.ItemsLogin do
  alias AccountSimulator.CLI.Structs.Menu

  # Estrutura do menu de entrada na estrutura de dados.
  def all,
    do: [
      %Menu{label: "Login", id: :login},
      %Menu{label: "Criar um cadastro", id: :create_user}
    ]
end
