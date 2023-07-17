# tavaner1 = fn(x) -> x * x end
# 3
# |> tavaner1.()
# |> IO.puts()


tavaner2 = fn
  m, n when n > 0 -> IO.puts("avali    " <> to_string(n) <> "    " <> to_string(m))
  m, n when m < 0 and n < 0 -> IO.puts("both neg   " <> to_string(n) <> "    " <> to_string(m))
end

tavaner2.(-3,-5)
