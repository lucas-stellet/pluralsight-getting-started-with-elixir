defmodule Sample.Utils do
  def sum(a, b), do: a + b

  def square(a), do: a * 2

  def custom_func(a, f) do
    f.(a)
  end
end
