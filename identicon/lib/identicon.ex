defmodule Identicon do
  def main(input) do
    input
    |> make_hash
  end

  @doc """
  Makes an MD5 hash out of a String 'input',
  then grabs a list of numbers generated from the MD5 hashing.
  """
  def make_hash(input) do
    :crypto.hash(:md5, input)
    |> :binary.bin_to_list
  end
end
