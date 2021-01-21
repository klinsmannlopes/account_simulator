defmodule AccountSimulator.CLI.Login.AccountConsult do
  
  def get_balance(usuarios, usuario) do
    IO.puts usuarios[usuario] |> Enum.map_join("\n", fn {k, v} -> "#{k}:#{v}" end)
  end

end
