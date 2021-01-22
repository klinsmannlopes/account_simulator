defmodule AccountSimulator.CLI.Login.AccountConsult do
  
  #É feita uma verificação na estrutura de dados para confirmar se o usuário existe.
  def get_user?(usuario, usuarios) do
    Keyword.fetch(usuarios, usuario)
  end
end
