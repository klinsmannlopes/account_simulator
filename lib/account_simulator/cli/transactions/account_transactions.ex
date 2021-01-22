defmodule AccountSimulator.Mix.CLI.Trasactions.AccountTransactions do
  alias Mix.Shell.IO, as: Shell


  @moduledoc """
  Modulo para realizar transações entre contas.
  """

  @doc """
  Obtem a atual quantia de dinheiro do usuário na estrutura de dados.

  ## Parâmetros

    - usuarios: Lista que representa a estrutura de dados -> Já estar sendo passado uma estrutura com dados padrões.

    - usuario: Atom que representa o nome do usuário.

  ## Exemplo 

      iex> Consulta.get_balance(:klinsmann, usuarios)
      AED:0
      AFN:0
      ...

  """

  def get_balance(usuario, usuarios) do
    Keyword.get(usuarios, usuario)
    |> Enum.map_join("\n", fn {k, v} -> "#{k}:#{v}" end)
    |> Shell.info()
  end

end
