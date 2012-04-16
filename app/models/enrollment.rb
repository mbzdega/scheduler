class Enrollment < ActiveRecord::Base
  
#Associations

  belongs_to :season
  belongs_to :team
  
end
