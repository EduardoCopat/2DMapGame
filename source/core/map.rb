class Map
  attr_accessor :size_x, :size_y

  def initialize(size_x, size_y)
    @size_x = size_x
    @size_y = size_y
  end

  def require(previousPosition, newPosition)
    if(newPosition.x > @size_x or newPosition.x < 0)
      return previousPosition
    elsif(newPosition.y > @size_y or newPosition.y < 0)
      return previousPosition
    else
      return newPosition
    end
  end
end