require('minitest/autorun')
require_relative('puzz')
class Test_puzz < MiniTest::Test

  def setup
    @puzzle = PuzzleClass.new(3,3)
    @puzzle.set_puzzle("12345*678")
  end

  def test_init
    assert_equal(PuzzleClass, @puzzle.class, "Not a class")
    assert_equal(@puzzle.width, 3, "Width not set")
    assert_equal(@puzzle.height, 3, "Height not set")
  end

  def test_set_puzzle
    assert_respond_to(@puzzle, :set_puzzle, "No method")
    #@puzzle.set_puzzle('12345 678')
    assert_equal('12345*678', @puzzle.initial_config, "Initial Config failed")
    assert_equal(Array, @puzzle.rows.class, "Not an array")
    assert_equal(3, @puzzle.rows.count, "Incorrect number of sub-arrays")
    assert_equal([["1","2","3"],["4","5","*"],["6","7","8"]], @puzzle.rows, "Array doesn't match")
  end

  def test_get_puzzle
    assert_respond_to(@puzzle, :get_puzzle, "No method 'get_puzzle'")
    #@puzzle.set_puzzle('12345 678')
    assert_equal('12345*678', @puzzle.get_puzzle, "Failed to retrieve config")
  end

  def test_to_s
    assert_respond_to(@puzzle, :to_s, "No method 'to_s'") # I know... to_s already exists - this is just practice
    assert_equal("123\n45*\n678", @puzzle.to_s, "Did not return correctly")
  end

  def test_solve
    assert_respond_to(@puzzle, :solve, "No method 'solve'")
    assert_equal("*12\n345\n678", @puzzle.solve, "Did not return solution!")
  end

  def test_move_up
    assert_respond_to(@puzzle, :move_up, "Not there yet")
    @puzzle.move_up
    assert_equal("12*\n453\n678", @puzzle.to_s, "Did not return correctly")
  end

  def test_move_down
    assert_respond_to(@puzzle, :move_down, "Not created")
    @puzzle.move_down
    assert_equal("123\n45*\n67*", @puzzle.to_s, "Did not return correctly")
  end
end
