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
    puts "pins knocked down on first roll"
    @pins1 = gets.chomp.to_i
    if not(@pins1 == 10)
      puts "pins knocked down on second roll"
      @pins2 = gets.chomp.to_i
    end
  end

  def score(pins1, pins2)
    if pins1 == 10 #strike
      return 25 #whatever strike score is
    elsif pins1 + pins2 == 10 #spare
      return 15 #whatever spare is
    else
      return pins1 + pins2
    end
  end

  def play
    i = 0
    2.times do
      roll
      @pins[i] = []
      @pins[i][0] = @pins1
      @pins[i][1] = @pins2
      @scores[i] = score(@pins1, @pins2)
      i += 1
    end
    @scores.each_with_index { |score, index| puts "score in set #{index + 1} was: #{score}" }
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

    scores_string = ""
    scores_for_scoreboard.each do |score|
      scores_string += score
    end
    return scores_string
  end

  def scoreboard()
    line_star = "**************************************************************************"
    line_underscore = "__________________________________________________________________________"
    header = "  1  |  2  |  3  |  4  |  5  |  6  |  7  |  8  |  9  | 10  | Total Score |"
    spacing_count = 15
    spacing = " " * spacing_count + "|"

    puts spacing + line_star
    puts spacing + header
    puts spacing + line_star
    puts "Player 1" + (" " * (spacing_count - "Player 1".length)) + "|" + scores_for_player(player1)
    puts spacing + line_underscore
  end
end

game = Bowl.new
game.conv_scores_to_scoreboard([8, 10, 15, 25])
