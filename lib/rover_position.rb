class RoverPosition
  attr_reader :position
  def initialize
    @position = [0, 0, :n]
  end

  def l
    @position = [0, 0, :w]
  end

end
