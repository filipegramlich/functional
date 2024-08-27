defmodule StructTest do
  use ExUnit.Case

  test "create a simple struct" do
    new_struct = %User{id: 100, name: "Filipe"}
    assert new_struct == %{__struct__: User, id: 100, name: "Filipe"}
  end
end
