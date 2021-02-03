defmodule AccountSimulator.CLI.Menu.ItensTransations do
  alias AccountSimulator.CLI.Structs.Menu

  # Estrutura do menu de transações da conta.
  def all,
    do: [
      %Menu{label: "Saldo", id: :balance},
      %Menu{label: "Saldo por moeda", id: :balance_currency},
      %Menu{label: "Depósito", id: :deposit},
      %Menu{label: "Tranferência", id: :transfer},
      %Menu{label: "Câmbio de moedas", id: :exchange}
    ]
end
