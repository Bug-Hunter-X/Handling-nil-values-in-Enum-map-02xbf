```elixir
defmodule Example do
  def my_function(list) do
    Enum.map(list, fn x -> if x > 5, do: x * 2, else: x end)
  end
end
```
This code has a subtle issue.  If the input list contains `nil`, the `if` statement will raise a `FunctionClauseError` because `nil > 5` will result in a boolean comparison against `nil`. 