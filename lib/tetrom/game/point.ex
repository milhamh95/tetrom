defmodule Tetrom.Game.Point do
  @max_row 4
  @max_col 4

  def new(row, col) do
    {row, col}
  end

  def move_down({row, col}) do
    {row + 1, col}
  end

  def move_left({row, col}) do
    {row, col - 1}
  end

  def move_right({row, col}) do
    {row, col + 1}
  end

  def move_to({from_row, from_col}, {to_row, to_col}) do
    {from_row + to_row, from_col + to_col}
  end

  def swap({row, col}) do
    {col, row}
  end

  def flip_left_right({row, col}) do
    {row, @max_col - col}
  end

  def flip_top_bottom({row, col}) do
    {@max_row - row, col}
  end

  def rotate(point, 0) do
    point
  end

  def rotate(point, 90) do
    point
    |> swap()
    |> flip_left_right()
  end

  def rotate(point, 180) do
    point
    |> flip_top_bottom()
    |> flip_left_right()
  end

  def rotate(point, 270) do
    point
    |> swap()
    |> flip_top_bottom()
  end

  def rotate(point, 360) do
    point
  end

  def paint(point, color) do
    {point, color}
  end
end
