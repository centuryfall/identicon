defmodule Identicon do
  def main(input) do
    input
    |> make_hash
  end

  @doc """
  Makes an MD5 hash out of a String 'input',
  then stores them in Identicon.Image as
  the List of numbers generated from the MD5 hashing.

  """
  def make_hash(input) do
    hex =
      :crypto.hash(:md5, input)
      |> :binary.bin_to_list()

    %Identicon.Image{hex: hex}
  end

  def color_values(hash) do
  end

  # If num % 2 == 0, color it. else, leave blank
end
