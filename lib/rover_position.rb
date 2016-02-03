class RoverPosition
  attr_reader :position
  def initialize
    @direction_index = 0
    @position = [0, 0, direction]
  end

  def l
    @direction_index -=1
    @position = [0, 0, direction]
  end

  private
  DIRECTIONS = [:n, :e, :s, :w]

  def direction
    DIRECTIONS[@direction_index % 4]
  end
end
