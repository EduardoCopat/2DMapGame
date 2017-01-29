class Point
  attr_accessor :x, :y

  def initialize(x, y)
    @x = x
    @y = y
  end

  def x
    return @x
  end

  def y
    return @y
  end

  def +(otherPoint)
    return Point.new(otherPoint.x() + @x, otherPoint.y() + @y)
  end

  def -(otherPoint)
    return Point.new(@x - otherPoint.x(), @y - otherPoint.y())
  end
end