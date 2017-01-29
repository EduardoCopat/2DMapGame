require "minitest/autorun"
require_relative '../source/core/map'
require_relative '../source/core/point'
require_relative '../source/core/actor'

class ActorMovementOnMap < Minitest::Test
  attr_accessor :map, :actor

  def setup
    @map = Map.new(10,10)
  end

  def test_westOutsideMap
    @actor = Actor.new(Point.new(0,0), @map)
    @actor.moveTo(Direction.west)

    point = @actor.getPosition()
    assert_equal(0, point.x)
    assert_equal(0, point.y)
  end

  def test_eastOutsideMap
    @actor = Actor.new(Point.new(10,10), @map)
    @actor.moveTo(Direction.east)

    point = @actor.getPosition()
    assert_equal(10, point.x)
    assert_equal(10, point.y)
  end

  def test_north_outside_map
    @actor = Actor.new(Point.new(0,0), @map)
    @actor.moveTo(Direction.north)

    point = @actor.getPosition()
    assert_equal(0, point.x)
    assert_equal(0, point.y)
  end

  def test_south_outside_map
    @actor = Actor.new(Point.new(10,10), @map)
    @actor.moveTo(Direction.south)

    point = @actor.getPosition()
    assert_equal(10, point.x)
    assert_equal(10, point.y)
  end

  def test_south_outside_map_player_with_size
    @actor = Actor.new(Point.new(8,8), @map)
    @actor.setSize(Point.new(2,2))
    @actor.moveTo(Direction.south)

    point = @actor.getPosition()
    assert_equal(8, point.x)
    assert_equal(8, point.y)
  end

  def test_East_outside_map_player_with_size
    @actor = Actor.new(Point.new(8,8), @map)
    @actor.setSize(Point.new(2,2))
    @actor.moveTo(Direction.east)

    point = @actor.getPosition()
    assert_equal(8, point.x)
    assert_equal(8, point.y)
  end

  def test_North_outside_map_player_with_size
    @actor = Actor.new(Point.new(0,0), @map)
    @actor.setSize(Point.new(2,2))
    @actor.moveTo(Direction.north)

    point = @actor.getPosition()
    assert_equal(0, point.x)
    assert_equal(0, point.y)
  end

  def test_west_outside_map_player_with_size
    @actor = Actor.new(Point.new(0,0), @map)
    @actor.setSize(Point.new(2,2))
    @actor.moveTo(Direction.west)

    point = @actor.getPosition()
    assert_equal(0, point.x)
    assert_equal(0, point.y)
  end

end