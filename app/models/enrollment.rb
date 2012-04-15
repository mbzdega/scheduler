class Enrollment < ActiveRecord::Base
  
#Associations
  belongs_to :team
  belongs_to :schedule
  
end
