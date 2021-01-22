defmodule AccountSimulator.CLI.Menu.ItemsLogin do
  alias AccountSimulator.CLI.Structs.Menu

  def all,
    do: [
      %Menu{label: "Login", id: :login},
      %Menu{label: "Criar um cadastro", id: :create_user}
    ]
end
