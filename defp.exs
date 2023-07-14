defmodule Privates do
    defp alo(name) do
        IO.puts("iam #{name}")
    end
    def hello(name \\ "kazem") do
        alo(name)
    end
end
Privates.hello("sadegh")