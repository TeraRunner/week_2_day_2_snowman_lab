class HiddenWord

  attr_reader :hidden_word

  def initialize(hidden_word)
    @hidden_word = hidden_word
    @display = ""

  end

  def get_display()
    return @display
  end

  def hide_word(hidden_word)
    counter = hidden_word.length #6
    @display = "*" * counter
    @display.split("")
  end

  def replace_letter(guessed_letter)
    index = 0
    for letter in @hidden_word.split("")
      if letter == guessed_letter
          @display[index] = guessed_letter
      end
      index += 1
    end
  end

end
