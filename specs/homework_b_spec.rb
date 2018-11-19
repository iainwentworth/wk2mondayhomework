require('minitest/autorun')
require('minitest/rg')
require_relative('../homework_b.rb')

class TeamTest < MiniTest::Test

  def setup()
    @team = Team.new("Hawks", ["Bob", "Alan", "Joe"], "John", 0)
  end

  def test_team_has_name()
    assert_equal("Hawks", @team.team_name())
  end

def test_team_has_players()
  assert_equal(["Bob", "Alan", "Joe"], @team.players())
end

def test_team_has_coach()
  assert_equal("John", @team.coach())
end

def test_can_set_coach()
  @team.coach = "Andrew"
  assert_equal("Andrew", @team.coach())
end

def test_add_player()
  @team.add_player("Euan")
  assert_equal(["Bob", "Alan", "Joe", "Euan"], @team.players())
end

def test_to_check_if_players_exist()
  result = @team.check_players("Debi")
  assert_equal(false, result)
end

def test_points_change()
@team.change_points("lose")
  assert_equal(0, @team.points())
end


end
