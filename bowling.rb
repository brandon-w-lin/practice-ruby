# Keep track of a score for a single roll
# Keep track of how many pins are left after the roll
# Add condition to determine if second roll is needed
# Keep track of the score for each of the first two rolls
# Update the scoring for a single frame to allow for strikes
# Update the scoring for a single frame to allow for spares
# Allow for multiple frames to be played
# Build condition to allow for 3 rolls in frame 10 if strike is scored on first roll
# Return the total score

class Bowl
  def initialize
    @pins = []
    @scores = []
  end

  def roll
    puts "Frame #{@frame + 1}, roll 1:"
    while true
      @pins1 = gets.chomp.to_i
      if @pins1.to_i.between?(0, 10)
        break
      end
    end
    if not(@pins1 == 10)
      puts "Frame #{@frame + 1}, roll 2:"
      while true
        @pins2 = gets.chomp.to_i
        if @pins2.to_i.between?(0, 10 - @pins1)
          break
        end
      end
    end
  end

  def conv_pins_to_score(pins1, pins2)
    if pins1 == 10 #strike
      return 25 #whatever strike score is
    elsif pins1 + pins2 == 10 #spare
      return 15 #whatever spare is
    else
      return pins1 + pins2
    end
  end

  def total_score(scores)
    total = 0
    @scores.each { |score| total += score }
    return total
  end

  def conv_scores_to_scoreboard(scores)
    scores_for_scoreboard = []
    scores.each do |score|
      if score == 25
        scores_for_scoreboard << "  X  |"
      elsif score == 15
        scores_for_scoreboard << "  /  |"
      else
        if score >= 10
          scores_for_scoreboard << " #{score}  |"
        else
          scores_for_scoreboard << "  #{score}  |"
        end
      end
    end

    blank_score = "     |"
    (10 - scores.length).times do
      scores_for_scoreboard << blank_score
    end

    scores_for_scoreboard << " " * (12 - total_score(scores).to_s.length) + total_score(scores).to_s + " |"

    scores_string = ""
    scores_for_scoreboard.each do |score|
      scores_string += score
    end
    return scores_string
  end

  def scoreboard
    line_star = "**************************************************************************"
    line_underscore = "__________________________________________________________________________"
    header = "  1  |  2  |  3  |  4  |  5  |  6  |  7  |  8  |  9  | 10  | Total Score |"
    spacing_count = 15
    spacing = " " * spacing_count + "|"

    puts spacing + line_star
    puts spacing + header
    puts spacing + line_star
    puts "Player 1" + (" " * (spacing_count - "Player 1".length)) + "|" + conv_scores_to_scoreboard(@scores)
    puts spacing + line_underscore
  end

  def play
    @frame = 0
    2.times do
      system("clear")
      scoreboard()
      roll
      @pins[@frame] = []
      @pins[@frame][0] = @pins1
      @pins[@frame][1] = @pins2
      @scores[@frame] = conv_pins_to_score(@pins1, @pins2)
      @frame += 1
    end
    system("clear")
    scoreboard()
  end
end

game = Bowl.new
game.play
