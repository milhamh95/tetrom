defmodule Tetrom.Game.PointTest do
  use ExUnit.Case
  alias Tetrom.Game.Point

  test "new point" do
    res = Point.new(0,0)
    assert {0,0} = res
  end

  test "move down" do
    res = Point.move_down({0, 0})
    assert {1, 0} == res
  end

  test "move left" do
    res = Point.move_left({0, 0})
    assert {0, -1} == res
  end

  test "move right" do
    res = Point.move_right({0, 0})
    assert {0, 1} == res
  end

  test "move to" do
    res = Point.move_to({0,0}, {2, 5})
    assert {2,5} == res
  end

  test "swap" do
    res = Point.swap({3,5})
    assert {5,3} == res
  end

  test "flip left right" do
    res = Point.flip_left_right({1,1})
    assert {1,3} == res
  end

  test "flip top bottom" do
    res = Point.flip_top_bottom({1,1})
    assert {3,1} == res
  end

  test "rotate 0 degree" do
    res = Point.rotate({2,3}, 0)
    assert {2,3} == res
  end

  test "rotate 90 degree" do
    res = Point.rotate({2,3}, 90)
    assert {3,2} == res
  end

  test "rotate 180 degree" do
    res = Point.rotate({2,3}, 180)
    assert {2,1} == res
  end

  test "rotate 270 degree" do
    res = Point.rotate({2,3}, 270)
    assert {1, 2} == res
  end

  test "rotate 360 degree" do
    res = Point.rotate({2,3}, 0)
    assert {2,3} == res
  end

  test "paint" do
    res = Point.paint({2,3}, "blue")
    assert {{2,3}, "blue"} == res
  end
end
