class Scorecard

  def scorecard
    frames = 0

    while frames < 12 do
      @score = []
      @score << @roll_1 + @roll_2

      if @roll_1 == 10 || @roll_2 == 10
        strike
      elsif @score < 10 && @roll_1 != 10 && @roll_2 != 10
        puts @score
      else
        spare
      end

      frames += 1
    end
  end
end

def input
  puts "First roll? "
  @roll_1 = gets.chomp.to_i

  puts "Second roll? "
  @roll_2 = gets.chomp.to_i
end

def strike
  puts "next roll please"
  @roll_1 = gets.chomp
  puts @score << @roll_1 unless @roll_1 == 10
  puts "next roll"
  @roll_2 = gets.chomp
  puts @score << @roll_2 unless @roll_2 == 10
end

def spare
  puts "next roll please"
  @roll_1 = gets.chomp
  puts @score << @roll_1 unless @roll_1 == 10
  puts "next roll"
  @roll_2 = gets.chomp
  puts @score << @roll_2 unless @roll_2 == 10
end
