defmodule Sample.Enum do
  import IO, only: [puts: 1]

  def first(list, val \\ nil)
  def first([head | _], _), do: head
  def first([], val), do: val

  def add(list, val \\ 0) do
    trace(val)
    [val | list]
  end

  defp trace(string) do
    puts("The value passed in was #{string}")
  end
end
