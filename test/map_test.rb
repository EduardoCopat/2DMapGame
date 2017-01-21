require "minitest/autorun"
require_relative '../source/map'
require_relative '../source/point'
require_relative '../source/actor'

class ActorMovement < Minitest::Test

  attr_accessor :map, :actor

  def setup
    @map = Map.new(10,10)
    @actor = Actor.new(Point.new(5,5), @map)
  end

  def test_moveEast
    @actor.moveTo("east")

    point = @actor.getPosition()
    assert_equal(6, point.x)
    assert_equal(5, point.y)
  end

  def test_moveWest
    @actor.moveTo("west")

    point = @actor.getPosition()
    assert_equal(4, point.x)
    assert_equal(5, point.y)
  end

  def test_moveNorth
    @actor.moveTo("north")

    point = @actor.getPosition()
    assert_equal(5, point.x)
    assert_equal(4, point.y)
  end

  def test_moveSouth
    @actor.moveTo("south")

    point = @actor.getPosition()
    assert_equal(5, point.x)
    assert_equal(6, point.y)
  end
end

