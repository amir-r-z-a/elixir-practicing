defmodule Rec do
  def printer(a , b) when b > 0 do
    IO.puts(a)
    printer(a, b-1)
  end
  def printer(_a , 0) do
    :ok
  end
  def adder([head|tail], ac)do
    adder(tail, head + ac)
  end
  def adder([],ac)do
    ac
  end

  def doubler([head | tail], new_list) do
    doubler(tail, [head * 2 | new_list])
  end
  def doubler([], new_list)do
    IO.inspect(new_list)
  end



  def list_printer([head|tail])do
    IO.puts(head)
    list_printer(tail)
  end
  def list_printer([])do
    :ok
  end
end
list = [3,5,8]
# list |> Rec.doubler([])

new_list = Enum.map(list, fn x->
  x * 2
end)
IO.inspect(new_list)

new_list2 = Enum.reduce(list, 0, fn x, acc ->
  x + acc
end)
IO.inspect(new_list2)
