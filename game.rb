class Game

  attr_reader :player, :hidden_word
  attr_writer :player, :hidden_word

  def initialize(player,hidden_word,guessed_letters)
    @player = player
    @hidden_word = hidden_word
    @guessed_letters = guessed_letters
  end

end
