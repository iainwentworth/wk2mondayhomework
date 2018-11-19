class Team

attr_accessor :team_name, :players, :coach, :points

  def initialize(team_name, players, coach, points)
    @team_name = team_name
    @players = players
    @coach = coach
    @points = points
  end

# def team_name()
#   @team_name
# end
#
# def players()
#   @players
# end
#
# def coach()
#   @coach
# end
#
# def set_coach(new_coach)
#   @coach = new_coach
# end

def add_player(player_to_add)
  @players << player_to_add
end

def check_players(player_to_check)
  for player in @players
    if player == player_to_check
      return true
    end
  end
  return false
end

def change_points(win_or_lose)
  if win_or_lose == "win" then @points += 1
end
end

end
