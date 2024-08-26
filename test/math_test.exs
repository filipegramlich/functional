defmodule MathTest do
  use ExUnit.Case

  describe "Math.sum/2" do
    test "when successed return result" do
      x = 5
      y = 3

      result = Math.sum(x, y)
      assert result == 8
    end

    test "anon function" do
      sum = fn x, y -> x + y end
      assert sum.(10, 90) == 100
    end

    test "& function" do
      result = Enum.map([1,2], &Math.multiply_by_two()/1)
      assert result == [2,4]
    end
  end
end
