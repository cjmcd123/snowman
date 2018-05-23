class Game

  attr_accessor :guessed_letters

  def initialize()
    @guessed_letters = []
  end

  def win_or_lose(correct, hiddeword, player)
    length = correct.length
    if length = hiddeword.word_count && player.lives > 0
      return "You Win!!!"
    elsif player.lives == 0
      return "You Lose!!!"
    end
    return
  end


end
