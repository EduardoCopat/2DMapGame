class Actor
  attr_accessor :position, :map

  def initialize(initialPosition, map)
    @position = initialPosition
    @map = map
  end

  def moveTo(direction)
    newPosition = direction.move(@position)
    #
    # if (direction == "east")
    #   newPosition = Point.new(@position.x + 1, @position.y)
    # elsif (direction == "west")
    #   newPosition = Point.new(@position.x - 1, @position.y)
    # elsif (direction == "north")
    #   newPosition = Point.new(@position.x, @position.y - 1)
    # elsif (direction == "south")
    #   newPosition = Point.new(@position.x, @position.y + 1)
    # end

    @position = @map.require(@position, newPosition)
  end

  def getPosition
    @position
  end
end
