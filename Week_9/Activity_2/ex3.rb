
class Roulette
  attr_reader :r
  def initialize
    @r = (1..10).to_a
  end

  def play(chosen_number)
    r.sample
  end

  def store_rnd_number_in_file
  end


end