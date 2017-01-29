class Actor

  def initialize(initialPosition, map)
    @position = initialPosition
    @map = map
    @size = Point.new(0,0)
  end

  def moveTo(direction)
    newPosition = direction.move(@position)
    @position = @map.require(@position, newPosition, @size)
  end

  def getPosition
    @position
  end

  def setSize(size)
    @size = size
  end
end
