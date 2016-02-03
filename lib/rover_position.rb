class RoverPosition
  attr_reader :state
  def initialize
    @direction_index = 0
    @state = [0, 0, direction]
  end

  def l
    @direction_index -=1
    @state = [0, 0, direction]
  end

  def r
    @direction_index +=1
    @state = [0, 0, direction]
  end

  def m
    @state = [0,1,:n]
  end

  private
  DIRECTIONS = [:n, :e, :s, :w]

  def direction
    DIRECTIONS[@direction_index % 4]
  end
end
