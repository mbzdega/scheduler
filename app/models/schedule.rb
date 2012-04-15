class Schedule < ActiveRecord::Base

# Associations
  has_many :matches
  belongs_to :heuristic
  
  has_many :enrollments
  has_many :teams, :through => :enrollments

# Callbacks

# Methods

def list_teams
  team_list = self.teams
  teams = []
  team_list.each do |team|
    teams.push(team.name)
  end
  return teams
end

end