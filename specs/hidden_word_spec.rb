require("minitest/autorun")
require("minitest/rg")
require_relative("../hidden_word")

class HiddenWordTest < MiniTest::Test

  def setup()
    @hidden_word = HiddenWord.new("banana")
  end

  def test_can_create_hidden_word()
    assert_equal(HiddenWord, @hidden_word.class())
  end

  def test_get_hidden_word()
    assert_equal("banana",@hidden_word.hidden_word)
  end

  def test_get_display()
    assert_equal("",@hidden_word.get_display())
  end

  def test_hide_word()
    assert_equal(["*","*","*","*","*","*"],@hidden_word.hide_word(@hidden_word.hidden_word))
  end

  def test_replace_letter()
    @hidden_word.hide_word(@hidden_word.hidden_word)
    guessed_letter = "a"
    @hidden_word.replace_letter(guessed_letter)
    assert_equal("*a*a*a",@hidden_word.get_display())
  end

  def test_letter_is_here
    result = @hidden_word.letter_is_here("a")
    assert_equal(true, result)
    assert_equal(false, !result)
  end

end
