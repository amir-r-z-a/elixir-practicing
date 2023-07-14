defmodule FunctionMatching do
  def zero?(0), do: true
  def zero?(x) when is_integer(x), do: false
  def zero?(_) do  raise "not int." end
end

FunctionMatching.zero?(0)
|> IO.puts()
