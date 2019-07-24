defmodule Identicon do
  def main(input) do
    input
    |> make_hash
    |> pick_color
    |> build_grid
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

  def pick_color(%Identicon.Image{hex: [r, g, b | _tail]} = image) do
    %Identicon.Image{image | color: {r, g, b}}
  end

  def build_grid(%Identicon.Image{hex: hex} = image) do
    hex
    |> Enum.chunk_every(3, 3, :discard)
    |> mirror_of_row
  end

  def mirror_of_row(row) do
    [first, second | _tail] = row
    row ++ [second, first]
  end

  # If num % 2 == 0, fill it with color. else, leave blank
end
