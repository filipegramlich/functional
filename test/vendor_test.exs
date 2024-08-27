defmodule VendorTest do
  use ExUnit.Case

  describe "register/2" do
    test "when params are valid" do
      id = 123
      description = "Novo ponto de venda."

      {:ok, result} = Vendor.register(id, description)
      assert result == %{description: "Novo ponto de venda.", id: 123}
    end

    test "when params are not valid" do
      id = :invalid
      description = "Novo ponto de venda."

      {:error, reason} = Vendor.register(id, description)
      assert reason == "Params are not valid."
    end
  end
end
