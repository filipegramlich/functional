defmodule Vendor do
  def register(id, description) when is_integer(id) do
    result = %{id: id, description: description}
    {:ok, result}
  end

  def register(_id, _description) do
    {:error, "Params are not valid."}
  end
end
