require("minitest/autorun")
require("minitest/rg")

require_relative("../game.rb")
require_relative("../player.rb")
require_relative("../hiddenword.rb")

class GameTest <MiniTest::Test

  def setup
    @game = Game.new()
    @player = Player.new("Craig")
    @hiddenword = HiddenWord.new("Test")
    @hiddenword.seperate
  end

  def test_empty_guessed_letters
    assert_equal([], @game.guessed_letters)
  end

  def test_failure
    @player.pass_or_fail(false)
    assert_equal(5, @player.lives)
  end

  def test_guess
    @hiddenword.guess("t", @player)
    assert_equal(["t", "t"], @hiddenword.correct)
  end

  def test_guess_fail
    @hiddenword.guess("w", @player)
    assert_equal([], @hiddenword.correct)
  end

  def test_win_or_lose_win
    assert_equal("You Win!!!", @game.win_or_lose(["t","e","s","t"], @hiddenword, @player))
  end


end
