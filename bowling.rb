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
    @pins1 = gets.chomp
    if not @pins == 10
      puts "pins knocked down on second roll"
      @pins2 = gets.chomp
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
    # 2.times do
    roll
    @pins[i] = []
    @pins[i][0] = @pins1
    @pins[i][1] = @pins2
    @scores[i] = score(@pins1, @pins2)
    i += 1
    scores.each { |score| puts "scores were: #{score}" }
    # end
  end
end

game = Bowl.new
game.play
