
class Direction
  def self.east
    EastMovement.new
  end

  def self.west
    WestMovement.new
  end

  def self.north
    NorthMovement.new
  end

  def self.south
    SouthMovement.new
  end
end

class EastMovement
  def move(position)
    return Point.new(position.x + 1, position.y)
  end
end

class WestMovement
  def move(position)
    return Point.new(position.x - 1, position.y)
  end
end

class NorthMovement
  def move(position)
    return Point.new(position.x, position.y - 1)
  end
end

class SouthMovement
  def move(position)
    return Point.new(position.x, position.y + 1)
  end
end