defmodule AccountSimulator.CLI.Menu.ItensTransations do
  alias AccountSimulator.CLI.Structs.Menu

  def all,
    do: [
      %Menu{label: "Saldo", id: :balance},
      %Menu{label: "Depósito", id: :deposit},
      %Menu{label: "Tranferência", id: :transfer},
      %Menu{label: "Câmbio de moedas", id: :exchange}
    ]
end
