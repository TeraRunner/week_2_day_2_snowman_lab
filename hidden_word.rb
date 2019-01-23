class HiddenWord

  attr_reader :hidden_word

  def initialize(hidden_word)
    @hidden_word = hidden_word
    @display = [] #turn this into an array
  end

  def get_display()
    return @display
  end
end
