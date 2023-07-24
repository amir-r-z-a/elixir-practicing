defmodule Server do
  require Logger

  def accept(port)do
    {:ok, socket} =
      :gen_tcp.listen(port, [:binary, packet: :line, active: false, reuseaddr: true])
    Logger.info("Accepting connections on port #{port}")
    IO.inspect(socket)
    loop_acceptor(socket)
  end

  defp loop_acceptor(socket) do
    {:ok, client} = :gen_tcp.accept(socket)
    IO.inspect(client)
    {:ok, pid} = Task.Supervisor.start_child(Server.TaskSupervisor, fn -> serve(client) end)
    :ok = :gen_tcp.controlling_process(client, pid)
    loop_acceptor(socket)
  end

  defp serve(socket) do
    IO.inspect(socket)
    socket
    |> read_line()
    |> write_line(socket)

    serve(socket)
  end

  defp read_line(socket) do
    {:ok, data} = :gen_tcp.recv(socket, 0)
    IO.inspect(data)
    new_data = String.split(data, " ")
    |> Enum.map(&String.trim(&1))
    IO.inspect(new_data)
    first = Enum.at(new_data,1) |> String.to_integer()
    second = Enum.at(new_data,2) |> String.to_integer()
    res = 0
    case Enum.at(new_data,0) do
      "Add" -> res = first + second
      "Sub" -> res = first - second
      "Mul" -> res = first * second
      "Div" -> res = first / second
    end
    |> Integer.to_string()
  end

  defp write_line(line, socket) do
    :gen_tcp.send(socket, line)
  end

end

Server.accept(4040)
