defmodule Document do
  def render(_id, :txt) do
    "Rendering txt"
  end
  def render(_id, :pdf) do
    "Rendering pdf"
  end
  def render(_id, unsupported) do
    "This type #{unsupported} is not supported"
  end
end
