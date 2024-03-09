defmodule Tetrom.Game.Color do
  def get(shape) do
    case shape do
      :i -> {:ok, "blue"}
      :z -> {:ok, "red"}
      :s -> {:ok, "yellow"}
      :t -> {:ok, "green"}
      :o -> {:ok, "purple"}
      :j -> {:ok, "orange"}
      :l -> {:ok, "brown"}
      _ -> {:error, "shape is not found"}
    end
  end
end
