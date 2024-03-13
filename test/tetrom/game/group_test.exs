defmodule Tetrom.Game.GroupTest do
  use ExUnit.Case
  alias Tetrom.Game.{Group, Point}

  setup do
    points = [
      Point.new(0,0),
      Point.new(0,1),
      Point.new(1,1),
      Point.new(2,1),
      Point.new(3,1),
    ]
    {:ok, points: points}
  end

  test "move down", context do
    res = Group.move_down(context.points)
    expected_res = [
      Point.new(1,0),
      Point.new(1,1),
      Point.new(2,1),
      Point.new(3,1),
      Point.new(4,1),
    ]

    assert expected_res == res
  end

  test "move left", context do
    res = Group.move_left(context.points)
    expected_res = [
      Point.new(0,-1),
      Point.new(0,0),
      Point.new(1,0),
      Point.new(2,0),
      Point.new(3,0),
    ]

    assert expected_res == res
  end

  test "move right", context do
    res = Group.move_right(context.points)
    expected_res = [
      Point.new(0,1),
      Point.new(0,2),
      Point.new(1,2),
      Point.new(2,2),
      Point.new(3,2),
    ]

    assert expected_res == res
  end

  test "move to position", context do
    res = Group.move_to(context.points, {1,3})
    expected_res = [
      Point.new(1,3),
      Point.new(1,4),
      Point.new(2,4),
      Point.new(3,4),
      Point.new(4,4),
    ]

    assert expected_res == res
  end

  test "swap", context do
    res = Group.swap(context.points)
    expected_res = [
      Point.new(0,0),
      Point.new(1,0),
      Point.new(1,1),
      Point.new(1,2),
      Point.new(1,3),
    ]

    assert expected_res == res
  end

  test "flip left right", context do
    res = Group.flip_left_right(context.points)
    expected_res = [
      Point.new(0,4),
      Point.new(0,3),
      Point.new(1,3),
      Point.new(2,3),
      Point.new(3,3),
    ]

    assert expected_res == res
  end

  test "flip top bottom", context do
    res = Group.flip_top_bottom(context.points)
    expected_res = [
      Point.new(4,0),
      Point.new(4,1),
      Point.new(3,1),
      Point.new(2,1),
      Point.new(1,1),
    ]

    assert expected_res == res
  end

  test "rotate 90", context do
    res = Group.rotate(context.points, 90)
    expected_res = [
      {0, 4},
      {1, 4},
      {1, 3},
      {1, 2},
      {1, 1}
    ]

    assert expected_res == res
  end

  test "paint", context do
    res = Group.paint(context.points, :i)
    expected_res = [
      {{0,0}, {:ok,"blue"}},
      {{0,1}, {:ok,"blue"}},
      {{1,1}, {:ok,"blue"}},
      {{2,1}, {:ok,"blue"}},
      {{3,1}, {:ok,"blue"}},
    ]

    assert expected_res == res
  end

end
