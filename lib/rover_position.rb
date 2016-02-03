class RoverPosition
  attr_reader :position
  def initialize
    @direction_index = 0
    @position = [0, 0, :n]
  end

  def l
    @position = [0, 0, :w]
  end

  private
  DIRECTIONS = [:n, :e, :s, :w]

  def direction
    DIRECTIONS[@direction_index % 4]
  end
end
