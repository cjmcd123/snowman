class HiddenWord

  attr_reader :word, :letters, :correct
  attr_writer :correct

  def initialize(word)
    @word = word
    @letters = []
    @correct = []
  end

  def seperate
    @word.downcase!
    @letters = @word.split(//)
  end

  def display
    display = ""
    for letter in @letters
      display << "*"
    end
    return display
  end

  def guess(guess_letter, player)
    for letter in @letters
      if letter == guess_letter
        @correct << guess_letter
        result = true
      else
        result = false
      end
    end
    player.pass_or_fail(result)
    return result
  end

  def word_count
    return @word.length
  end


end
