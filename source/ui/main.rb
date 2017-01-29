require 'gosu'
#require 'require_all'
require_relative '../../source/core/actor'
require_relative '../../source/core/direction'
require_relative '../../source/core/map'
require_relative '../../source/core/point'

class Main < Gosu::Window
  attr_accessor :map, :player

  def initialize
    super 640, 480
    self.caption = 'Hello World!'

    @map = Map.new(100, 100)

    @player = Actor.new(Point.new(5, 5), @map)
    @size = Point.new(5,5)
    @player.setSize(@size)
  end

  def draw

    Gosu::draw_rect(0, 0, 100, 100, Gosu::Color::GRAY)
    Gosu::draw_rect(@player.getPosition().x, @player.getPosition().y, @size.x, @size.y, Gosu::Color::AQUA)
  end

  def update
    if Gosu.button_down? Gosu::KB_RIGHT
      @player.moveTo(Direction.east)
    elsif Gosu.button_down? Gosu::KB_LEFT
      @player.moveTo(Direction.west)
    elsif Gosu.button_down? Gosu::KB_UP
      @player.moveTo(Direction.north)
    elsif Gosu.button_down? Gosu::KB_DOWN
      @player.moveTo(Direction.south)
    end
  end
end

window = Main.new
window.show