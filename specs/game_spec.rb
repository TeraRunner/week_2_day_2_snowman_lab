require("minitest/autorun")
require("minitest/rg")
require_relative("../hidden_word")
require_relative("../player.rb")
require_relative("../game.rb")

class GameTest < MiniTest::Test

  def setup()
    @player = Player.new("Jay",6)
    @hidden_word = HiddenWord.new("banana")
    @game = Game.new(@player,@hidden_word,[])
  end

  def test_can_create_game()
    assert_equal(Game,@game.class)
  end

  def test_guessed_letter
    guessed_letter_1 = @game.guessed_letter("a")
    guessed_letter_2 = @game.guessed_letter("c")
    assert_equal(true,@hidden_word.letter_is_here(guessed_letter_1))
    assert_equal(false,@hidden_word.letter_is_here(guessed_letter_2))
  end

  def test_letters_on_the_array
    guessed_letter_1 = @game.guessed_letter("a")
    @game.letters_on_the_array
    assert_equal(1, @game.guessed_letter.length)
  end

end
