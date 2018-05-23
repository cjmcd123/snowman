class Player

  attr_reader :name, :lives

  def initialize(name)
    @name = name
    @lives = 6
  end

  def pass_or_fail(arguement)
    if arguement == false
      @lives -= 1
    end
  end

end
