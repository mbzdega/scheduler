class Team < ActiveRecord::Base

# Associations
  has_many :contracts
  has_many :users, :through => :contracts
  
  has_many :appearances
  has_many :matches, :through => :appearances
  
  has_many :enrollments
  has_many :seasons, :through => :enrollments
  
end
