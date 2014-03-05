class PuzzleClass
  attr_accessor :width, :height
  attr_reader :initial_config
  def initialize(width,height)
    @width = width
    @height = height
  end

  def set_puzzle(config)
    @initial_config = config
  end

  def get_puzzle()

  end
end