  defmodule TupleTest do
    use ExUnit.Case

    test "simples tests about tuples" do
      id = 123
      type = :txt
      email_map = %{email: "test@gmail.com"}

      tuple = {id, type, email_map}
      assert tuple == {123, :txt, %{email: "test@gmail.com"}}
    end

    test "insert elements" do
      data = {1}
      data = Tuple.insert_at(data, 1, 2)

      assert elem(data, 1) == 2
      assert data == {1, 2}
    end
  end
