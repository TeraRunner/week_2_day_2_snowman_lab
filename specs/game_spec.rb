require("minitest/autorun")
require("minitest/rg")
require_relative("../hidden_word")
require_relative("../player.rb")
require_relative("../game.rb")

class GameTest < MiniTest::Test

  def setup()
    @player = Player.new("Jay",6)
    @hidden_word = HiddenWord.new("banana","******")
    @game = Game.new(@player,@hidden_word,[])
  end

  def test_can_create_game()
    assert_equal(Game,@game.class)
  end


end
