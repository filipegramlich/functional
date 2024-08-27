defmodule MapsTest do
  use ExUnit.Case

  test "maps" do
    data = %{ name: "Filipe"}

    %{name: my_name} = data
    assert my_name == "Filipe"

    {:ok, my_name_2} = Map.fetch(data, :name)
    assert my_name_2 == "Filipe"
  end

  test "adding values in map" do
    data = %{name: "Max"}

    new_data = %{data | name: "Filipe"}

    assert data.name == "Max"
    assert new_data.name == "Filipe"
  end
end
