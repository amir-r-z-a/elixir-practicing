hi = "hello i am amirreza"
splited = String.split(hi, "a", [trim: true])
IO.puts(Enum.at(splited,0))
