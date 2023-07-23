defmodule AnotherOne do 
    @moduledoc "using function attributes "

    @constant1 11
    @constant2 22

    def printc1() do 
        IO.puts(@constant1)
    end

    def printc2() do 
        IO.puts(@constant2)
    end

end

AnotherOne.printc1()