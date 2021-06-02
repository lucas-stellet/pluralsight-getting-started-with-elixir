defmodule Sample.Enum do
  @moduledoc false
  def first(list, val \\ nil)
  def first([head | _tail], _), do: head
  def first([], val), do: val

  def add(list, val \\ 0) do
    trace(val)
    [val | list]
  end

  defp trace(string) do
    IO.puts("The value passed in was #{string}")
  end
end
