defmodule Concat do
  # A function head declaring defaults
  def join(a, b \\ nil, sep \\ " ") do
    # IO.puts("first")
  end

  # A function head declaring defaults
  def join(a, b, _sep) when is_nil(b) do
    IO.puts("second")
    a
  end



  def join(a, b, sep) do
    IO.puts("third")
    a <> sep <> b
  end
end

IO.puts Concat.join("Hello", "world")      #=> Hello world
# IO.puts Concat.join("Hello", "world", "_") #=> Hello_world
# IO.puts Concat.join("Hello")               #=> Hello
