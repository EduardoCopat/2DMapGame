require 'gosu'
require 'require_all'
require_all '../../source/core'

class Main < Gosu::Window
  attr_accessor :map, :player

  def initialize
    super 640, 480
    self.caption = 'Hello World!'

    @map = Map.new(100, 100)
    @player = Actor.new(Point.new(5, 5), @map)
  end

  def draw

    Gosu::draw_rect(0, 0, 100, 100, Gosu::Color::GRAY)
    Gosu::draw_rect(@player.getPosition().x, @player.getPosition().y, 5, 5, Gosu::Color::AQUA)
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

    # if Gosu.button_down? Gosu::KB_LEFT or Gosu::button_down? Gosu::GP_LEFT
    #   @player.turn_left
    # end
    # if Gosu.button_down? Gosu::KB_RIGHT or Gosu::button_down? Gosu::GP_RIGHT
    #   @player.turn_right
    # end
    # if Gosu.button_down? Gosu::KB_UP or Gosu::button_down? Gosu::GP_BUTTON_0
    #   @player.accelerate
    # end
    # @player.move
  end
end

window = Main.new
window.show