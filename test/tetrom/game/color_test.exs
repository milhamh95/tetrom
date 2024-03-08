defmodule Tetrom.Game.ColorTest do
  use ExUnit.Case
  alias Tetrom.Game.Color

  describe "shape name" do
    test "blue shape name" do
      res = Color.get_shape_name(:i)
      case res do
        {:ok, shape_name} -> assert shape_name == "blue"
        _unexpected_result -> assert false
      end
    end

    test "red shape name" do
      res = Color.get_shape_name(:z)
      case res do
        {:ok, shape_name} -> assert shape_name == "red"
        _unexpected_result -> assert false
      end
    end

    test "yellow shape name" do
      res = Color.get_shape_name(:s)
      case res do
        {:ok, shape_name} -> assert shape_name == "yellow"
        _unexpected_result -> assert false
      end
    end

    test "green shape name" do
      res = Color.get_shape_name(:t)
      case res do
        {:ok, shape_name} -> assert shape_name == "green"
        _unexpected_result -> assert false
      end
    end

    test "purple shape name" do
      res = Color.get_shape_name(:o)
      case res do
        {:ok, shape_name} -> assert shape_name == "purple"
        _unexpected_result -> assert false
      end
    end

    test "orange shape name" do
      res = Color.get_shape_name(:j)
      case res do
        {:ok, shape_name} -> assert shape_name == "orange"
        _unexpected_result -> assert false
      end
    end

    test "brown shape name" do
      res = Color.get_shape_name(:l)
      case res do
        {:ok, shape_name} -> assert shape_name == "brown"
        _unexpected_result -> assert false
      end
    end

    test "unknown shape name" do
      result = Color.get_shape_name(:v)
      case result do
        {:error, reason} -> assert reason == "shape is not found"
        _unexpected_result -> assert false
      end
    end

  end

end
