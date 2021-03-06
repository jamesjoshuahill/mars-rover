class RoverPosition
  attr_reader :state
  def initialize
    @direction_index = 0
    @state = [0, 0, direction]
  end

  def l
    @direction_index -=1
    @state[2] = direction
  end

  def r
    @direction_index +=1
    @state[2] = direction
  end

  def m
    case direction
    when :n
      @state[1] += 1
    when :e
      @state[0] += 1
    when :w
      @state[0] -= 1
    when :s
      @state[1] -= 1
    end
  end

  def cmd(command)
    command.each_char do |c|
      send c.to_sym
    end
  end

  private
  DIRECTIONS = [:n, :e, :s, :w]

  def direction
    DIRECTIONS[@direction_index % 4]
  end
end
