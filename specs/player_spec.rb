require("minitest/autorun")
require("minitest/rg")

require_relative("../player.rb")

class PlayerTest <MiniTest::Test

  def setup
    @player = Player.new("Craig")
  end

  def test_name
    assert_equal("Craig", @player.name)
  end

  def test_lives
    assert_equal(6, @player.lives)
  end 

end
