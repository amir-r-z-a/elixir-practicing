person = {"Bob", 10}
age = elem(person, 1)
name = elem(person, 0)
older_bob = put_elem(person, 1, 90)
IO.puts(elem(older_bob, 1))