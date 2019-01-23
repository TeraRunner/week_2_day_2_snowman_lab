require("minitest/autorun")
require("minitest/rg")
require_relative("../hidden_word")

class HiddenWordTest < MiniTest::Test

  def setup()
    @hidden_word = HiddenWord.new("banana", "******")
  end

  def test_can_create_hidden_word()
    assert_equal(HiddenWord, @hidden_word.class())
  end

  def test_get_hidden_word()
    assert_equal("banana",@hidden_word.hidden_word)
  end

  def test_get_display()
    assert_equal("******",@hidden_word.display)
  end

end
