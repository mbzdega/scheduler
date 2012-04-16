class Season < ActiveRecord::Base
  
#Associations
  belongs_to :leagues
  has_many :schedules
  
  has_many :enrollments
  has_many :teams, :through => :enrollments
  
end
