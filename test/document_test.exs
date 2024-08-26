defmodule DocumentTest do
  use ExUnit.Case

  describe "Document.render/2" do
    test "render txt" do
      id = 123
      type = :txt

      result = Document.render(id, type)
      assert result == "Rendering txt"
    end

    test "render pdf" do
      id = 321
      type = :pdf

      result = Document.render(id, type)
      assert result == "Rendering pdf"
    end

    test "exception to unsupported types" do
      id = 321
      type = :unsupported

      result = Document.render(id, type)
      assert result == "This type #{type} is not supported"
    end
  end
end
