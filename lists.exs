my_scores = [15,16,18,20,11]

my_scores
|> length()
|> IO.puts()


my_scores
|> Enum.at(4)
|> IO.puts()

f = my_scores
|> List.replace_at(3, 12)



my_scores
|> Enum.at(3)
|> IO.puts()

f
|> Enum.at(3)
|> IO.puts()
