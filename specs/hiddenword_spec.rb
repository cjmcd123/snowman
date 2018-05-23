require("minitest/autorun")
require("minitest/rg")

require_relative("../hiddenword.rb")
require_relative("../player.rb")

class HiddenWordTest <MiniTest::Test

  def setup
    @hiddenword = HiddenWord.new("Test")
    @player = Player.new("Craig")
    @hiddenword.seperate
    @hiddenword2 = HiddenWord.new("I hate this")
    @hiddenword2.seperate
  end

  def test_letters
    assert_equal(["t", "e", "s", "t"], @hiddenword.letters)
  end

  def test_letters2
    assert_equal(["i", "h", "a", "t", "e", "t", "h", "i", "s"], @hiddenword2.letters)
  end

  def test_display
    assert_equal("****", @hiddenword.display)
  end

  def test_display
    assert_equal("****", @hiddenword.display)
  end

  def test_guess
    assert_equal(true, @hiddenword.guess("t", @player))
  end

  def test_guess_false
    assert_equal(false, @hiddenword.guess("w", @player))
  end

end
