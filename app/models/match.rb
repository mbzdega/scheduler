class Match < ActiveRecord::Base

# Associations
  belongs_to :schedule
  belongs_to :field
  
  has_many :appearances
  has_many :teams, :through => :appearances

  has_many :caps
  has_many :users, :through => :caps

# Methods

def team_names
  team_names = [self.teams.to_a[0]["name"], self.teams.to_a[1]["name"]]
end

end
