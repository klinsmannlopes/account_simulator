defmodule AccountSimulator.CLI.Login.AccountConsult do
  alias Mix.Shell.IO, as: Shell
  @moduledoc """
  Realiza querys na estrutura de dados.
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

  @doc """
  É feita uma verificação na estrutura de dados para confirmar se o usuário existe.

  ## Exemplo

      iex> Consulta.get_user?([john: 104, stone: 220], :rita)
      :error

      iex> Consulta.get_user?([john: 233, stone: 10], :stone) 
      {:ok, 10}
      
  """

  def get_user?(usuario, usuarios) do
    Keyword.fetch(usuarios, usuario)
  end
end
