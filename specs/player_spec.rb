require("minitest/autorun")
require("minitest/rg")
require_relative("../player.rb")

class PlayerTest < MiniTest::Test

  def setup()
    @player = Player.new("Jay",6)
  end

  def test_can_create_player()
    assert_equal(Player,@player.class)
  end

  def test_get_name()
    assert_equal("Jay",@player.player_name)
  end

  def test_get_lives()
    assert_equal(6,@player.lives)
  end


end
