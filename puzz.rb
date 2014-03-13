class PuzzleClass
  attr_accessor :width, :height
  attr_reader :initial_config, :rows
  def initialize(width,height)
    @width = width
    @height = height
  end

  def set_puzzle(config)
    @initial_config = config
    @rows = Array.new(height){Array.new(width)}
    temp = @initial_config.split('')
    h = 0
    i = 0
    until i == height
      j = 0
      until j == width
        @rows[i][j] = temp[h]
        h += 1
        j += 1
      end
      i += 1
    end
  end

  def get_puzzle()
    @initial_config
  end

  def to_s
    result = ""
    @rows.each { |row| result += "#{row.join("")}\n" }
    result.chomp
  end

  def solve
    temp = Array.new(height){Array.new(width)}
    str_temp = @initial_config.split('').sort!
    h = 0
    i = 0
    until i == height
      j = 0
      until j == width
        temp[i][j] = str_temp[h]
        h += 1
        j += 1
      end
      i += 1
    end
    str_temp = ""
    temp.each do |row|
      str_temp += "#{row.join("")}\n"
    end
    str_temp.chomp
  end

  def move_up
    a = 0
    b = 0
    while a < @rows.length
      if @rows[a].index("*") != nil
        b = @rows[a].index("*")
        break
      end
      a += 1
    end
    temp = @rows[a - 1][b]
    @rows[a - 1][b] = @rows[a][b]
    @rows[a][b] = temp
  end

  def move_down
    a = 0
    b = 0
    while a < @rows.length
      if @rows[a].index("*") != nil
        b = @rows[a].index("*")
        break
      end
      a += 1
    end
    temp = @rows[a + 1][b]
    @rows[a + 1][b] = @rows[a][b]
    @rows[a][b] = temp
  end
end