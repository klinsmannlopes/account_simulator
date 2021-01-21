defmodule AccountSimulator.CLI.Menu.ItensLogin do
  alias AccountSimulator.CLI.Menu.Menu

  def all,
    do: [
      %Menu{label: "Login", id: :login},
      %Menu{label: "Criar um cadastro", id: :create_user},
    ]
end
