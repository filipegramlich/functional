defmodule FunctionalTest do
  use ExUnit.Case
  doctest Functional

  test "Person without pattern matching created" do
    people = Person.create("Filipe", :male)

    assert people.name == "Filipe"
    assert people.genre == :male
  end

  test "Person created with pattern matching" do
    %{
      name: new_name,
      genre: new_genre
    } = Person.create("My Name", :male)

    assert new_name == "My Name"
    assert new_genre == :male
  end
end
