defmodule ListFilter do
  def call(list) do
    Enum.reduce(list, 0, fn n, stack -> checkElement(n, stack) end)
  end

  defp checkElement(n, stack) do
    n
    |> Integer.parse()
    |> filterNaN()
    |> rem(2)
    |> incrementIfOdd(stack)
  end

  defp filterNaN(:error), do: 0
  defp filterNaN({n, _}), do: n

  defp incrementIfOdd(0, stack), do: stack
  defp incrementIfOdd(_, stack), do: stack + 1
end
