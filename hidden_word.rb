class HiddenWord

  attr_reader :hidden_word

  def initialize(hidden_word)
    @hidden_word = hidden_word
    @display = [] #turn this into an array

  end

  # def get_display()
  #   return @display
  # end
  def word_to_array(hidden_word)
    hidden_word_array = hidden_word.split("")
  end


  # def get_display(guessed_letter)
  #   for each_letter in @hidden_word
  #     if each_letter == guessed_letter
  #       hidden_word_array #this will require hidden word to be an array
  #
  #   end
end
