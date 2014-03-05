require('minitest/autorun')
require_relative('puzz')
class Test_puzz < MiniTest::Test
  def setup
    @puzzle = PuzzleClass.new(3,3)
  end

  def test_init
    assert_equal(PuzzleClass, @puzzle.class, "Class not created")
    assert_equal(@puzzle.width, 3, "Width not created")
  end

  def test_set_puzzle
    assert_respond_to(@puzzle, :set_puzzle, "Set_Puzzle not written!")
    @puzzle.set_puzzle('12345 678')
    assert_equal('12345 678', @puzzle.initial_config, "Initial Config")
  end

  def test_get_puzzle
    assert_respond_to(@puzzle, :get_puzzle, "Get_Puzzle not written!")
  end
end
