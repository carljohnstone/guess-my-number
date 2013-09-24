def guess_my_number
  @guesser = NumberGuesser.new
  @guesser.guess
end

def higher
  @guesser.higher
  @guesser.guess
end

def lower
  @guesser.lower
  @guesser.guess
end

class NumberGuesser

  def initialize
    @lowest_possible = 1
    @highest_possible = 100
  end

  def guess
    @lowest_possible + (@highest_possible - @lowest_possible) / 2
  end

  def lower
    @highest_possible = guess - 1
  end

  def higher
    @lowest_possible = guess + 1
  end

end

