defmodule AreaHandler do 
    def circle_area(r) do
        r * r * 3.14
    end
    def circle_area(r,x) do
        r * x * 3.14
    end
    def triangle_area(x) do
        x * 3
    end
end

2 
|> AreaHandler.circle_area
|> AreaHandler.triangle_area
|> IO.puts()