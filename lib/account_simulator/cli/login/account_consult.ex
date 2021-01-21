defmodule AccountSimulator.CLI.Login.AccountConsult do
  
  def get_balance(usuario, usuarios) do
    IO.puts usuarios[usuario] |> Enum.map_join("\n", fn {k, v} -> "#{k}:#{v}" end)
  end

  def get_user?(usuario, usuarios) do
    Keyword.fetch(usuarios, usuario) 
  end
end
