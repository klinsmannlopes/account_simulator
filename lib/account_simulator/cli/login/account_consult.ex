defmodule AccountSimulator.CLI.Login.AccountConsult do

  @moduledoc """
  Realiza querys na estrutura de dados.
  """

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
