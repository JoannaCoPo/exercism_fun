=begin
Write your code for the 'Tournament' exercise in this file. Make the tests in
`tournament_test.rb` pass.

To get started with TDD, see the `README.md` file in your
`ruby/tournament` directory.
=end
class Tournament
  def self.tally(outcomes)
    # header_row = "Team                           | MP |  W |  D |  L |  P\n"
    self.new.tally_outcomes(outcomes)
  end

  def tally_outcomes(outcomes)
    outcomes.split("\n").each do |match|
      home, away, match_result = match.strip.split(';')
      
      teams = Hash.new { |hash, key| hash[key] = { MP: 0, W: 0, D: 0, L: 0, P: 0 } }

      # += 1 for every match
      teams[home][:MP] += 1
      teams[away][:MP] += 1

      # if home wins, += 3 
      if match_result == 'win'
        teams[home][:W] += 1
        teams[away][:L] += 1
        teams[home][:P] += 3
      # if away wins, += 3 
      elsif match_result == 'loss'
        teams[home][:L] += 1
        teams[away][:W] += 1
        teams[away][:P] += 3
      # if a tie/draw, +=1 for home and away
      elsif match_result == 'draw'
        teams[home][:D] += 1
        teams[home][:P] += 1

        teams[away][:D] += 1
        teams[away][:P] += 1
      end
      binding.pry
      teams.each do |k, v|
        "#{k}                           | #{v[:MP]} |  #{v[:W]} |  #{v[:D]} |  #{v[:L]} |  #{v[:P]}\n"
      end
    end
  end



  def self.format_outcome(outcome)
    {team_name: nil, mp: 0, w: 0, d: 0, l: 0, p: 0 }
  end

  # def self.setup_scoreboard
  #   # columns = 6
  #   grid = []
  #   row  = [" ", " ", " ", " ", " ", " "]
  # end

  # def self.add_row(grid, column)
  #   row = Array.new(6, " ")
  #   grid << row
  # end

  def grid_data
    "#{}                           | #{} |  #{} |  #{} |  #{} |  #{}\n" 
    "#{k}                           | #{v[:MP]} |  #{v[:W]} |  #{v[:D]} |  #{v[:L]} |  #{v[:P]}\n" 
  end
end

# MP: Matches Played
# W: Matches Won
# D: Matches Drawn (Tied)
# L: Matches Lost
# P: Points
# A win earns a team 3 points. A draw earns 1. A loss earns 0.

# The outcome is ordered by points, descending. In case of a tie, teams are ordered alphabetically.