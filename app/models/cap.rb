class Cap < ActiveRecord::Base
  
# Associations
  belongs_to :team
  belongs_to :match
  
end
