defmodule MyModule do 
alias IO, as: MyIO
    def printer() do
        MyIO.puts("yoo im a printer ")
    end 
end

MyModule.printer()
