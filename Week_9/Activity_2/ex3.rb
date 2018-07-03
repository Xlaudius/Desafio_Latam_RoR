class Roulette
  attr_reader :r, :rand_r, :occurrences
  def initialize
    @r = (1..10).to_a
  end

  def play(chosen_number)
    @rand_r = r.sample
    if rand_r == chosen_number
      puts "WINNER!, with lucky number #{rand_r}!"
      store_rnd_number_in_file("won")
    else
      puts "You lost! choice: #{chosen_number}, roulette: #{rand_r}"
      store_rnd_number_in_file("lost")
    end
  end

  def store_rnd_number_in_file(output)
    if output == "won"
      file = File.open("roulette_history.txt", 'a')
      file.puts "_#{rand_r}"
      file.close

      file = File.open("winners.txt", 'a')
      file.puts "_#{rand_r}"
      file.close
    else
      file = File.open("roulette_history.txt", 'a')
      file.puts "_#{rand_r}"
      file.close
    end
  end

  def better_value_in(historic = "roulette_history.txt")
    ocurrences = {}

    file = File.open(historic)
    file.each_line do |line|
      # number = line.split("\n")
      # if occurrences[line]
      #   occurrences[line] += 1
      # else
      #   occurrences[line] = 1
      # end
    # end
    puts line
    file.close
    return ocurrences
  end
end

Roulette.new.better_value_in
