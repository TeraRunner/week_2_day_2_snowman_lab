class Game

  attr_reader :player, :hidden_word
  attr_writer :player, :hidden_word

  def initialize(player,hidden_word,guessed_letters)
    @player = player
    @hidden_word = hidden_word
    @guessed_letters = []
  end

  def guessed_letter(guessed_letter)
    return guessed_letter
  end

  def letters_on_the_array(guessed_letter(letter))
    @guessed_letters << guessed_letter
  end

end
