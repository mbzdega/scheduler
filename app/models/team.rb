class Team < ActiveRecord::Base

# Associations
  has_many :caps
  has_many :matches, :through => :caps
  
  has_many :enrollments
  has_many :schedules, :through => :enrollments
  
end
