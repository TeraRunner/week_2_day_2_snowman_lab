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

  def test_hidden_word_to_array()
    word = @hidden_word.hidden_word
    assert_equal(["b","a","n","a","n","a"],@hidden_word.word_to_array(word))
  end

  # def test_get_display()
  #   assert_equal([],@hidden_word.get_display())
  # end
  # def test_get_display()
  #   guessed_letter = "n"
  #   assert_equal("**n*n*",@hidden_word.get_display(guessed_letter)
  # end


end
