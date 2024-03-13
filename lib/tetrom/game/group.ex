defmodule Tetrom.Game.Group do
  alias Tetrom.Game.{Point, Color}

  def move_down(points) do
    # Enum.map(points, &Point.move_down/1)
    Enum.map(points, fn point -> Point.move_down(point) end)
  end

  def move_left(points) do
    # Enum.map(points, &Point.move_left/1)
    Enum.map(points, fn point -> Point.move_left(point) end)
  end

  def move_right(points) do
    # Enum.map(points, &Point.move_right/1)
    Enum.map(points, fn point -> Point.move_right(point) end)
  end

  def move_to(points, {to_row, to_col}) do
    # Enum.map(points, &Point.move_to(&1, {to_row, to_col}))
    Enum.map(points, fn point -> Point.move_to(point, {to_row, to_col}) end)
  end

  def swap(points) do
    # Enum.map(points, &Point.swap/1)
    Enum.map(points, fn point -> Point.swap(point) end)
  end

  def flip_left_right(points) do
    # Enum.map(points, &Point.flip_left_right/1)
    Enum.map(points, fn point -> Point.flip_left_right(point) end)
  end

  def flip_top_bottom(points) do
    # Enum.map(points, &Point.flip_top_bottom/1)
    Enum.map(points, fn point -> Point.flip_top_bottom(point) end)
  end

  def rotate(points, degrees) do
    # Enum.map(points, &Point.rotate(&1, degrees))
    Enum.map(points, fn point -> Point.paint(point, degrees) end)
  end

  def paint(points, shape_name) do
    # Enum.map(points, &Point.paint(&1, Color.get(shape_name)))
    Enum.map(points,
      fn point ->
        Point.paint(
          point,
          Color.get(shape_name)
        )
      end)
  end

end
