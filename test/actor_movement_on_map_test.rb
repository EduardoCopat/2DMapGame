require "minitest/autorun"
require_relative '../source/map'
require_relative '../source/point'
require_relative '../source/actor'

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
end