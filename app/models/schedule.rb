class Schedule < ActiveRecord::Base

# Associations
  has_many :matches
  belongs_to :heuristic  
  belongs_to :season

# Callbacks

# Methods

def list_team_names
  team_list = self.teams
  teams = []
  team_list.each do |team|
    teams.push(team.name)
  end
  return teams
end

end