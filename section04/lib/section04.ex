defmodule ModulePlayground do
  @moduledoc false
  import IO, only: [puts: 1]
  import Kernel, except: [inspect: 1]
  alias ModulePlayground.Misc.Util.Math

  def say_here do
    inspect("I'm here")
  end

  def inspect(param1) do
    puts("Starting output")
    puts(param1)
    puts("Ending output")
  end

  def print_sum do
    Math.add(1, 2)
  end
end
