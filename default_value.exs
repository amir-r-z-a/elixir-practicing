defmodule Calc do 
    def mul(a\\3, b\\5) do
        a * b
    end
end

Calc.mul(2, 3)
|> IO.puts()