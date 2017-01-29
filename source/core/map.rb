class Map
  attr_accessor :size_x, :size_y

  def initialize(size_x, size_y)
    @size_x = size_x
    @size_y = size_y
  end

  def require(previousPosition, newPosition, size)
    nextSoutheastPosition = newPosition + size
    outsideBoundaries = isOutsideBoundaries(nextSoutheastPosition)

    if outsideBoundaries == false
      nextNorthwestPosition = newPosition
      outsideBoundaries = isOutsideBoundaries(nextNorthwestPosition)
    end

    if outsideBoundaries == true
      return previousPosition
    else
      return newPosition
    end
  end

  def isOutsideBoundaries(nextPosition)
    if (nextPosition.x > @size_x or nextPosition.x < 0)
      return true
    elsif (nextPosition.y > @size_y or nextPosition.y < 0)
      return true
    else
      return false
    end
  end
end