defmodule Sample.Enum do
  @moduledoc false
  import Kernel, except: [length: 1, lenght: 2]

  def first(list) do
    if list == [], do: nil, else: hd(list)
  end

  def unless_first(list) do
    unless list == [] do
      hd(list)
    end
  end

  def map([], _), do: []

  def map([hd | tl], f) do
    [f.(hd) | map(tl, f)]
  end

  def length([]), do: 0

  def length([_ | tail]),
    do: 1 + length(tail)
end
