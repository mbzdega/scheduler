class Team < ActiveRecord::Base

# Associations
  has_many :contracts
  has_many :caps
  has_many :matches, :through => :caps
  
  has_many :enrollments
  has_many :seasons, :through => :enrollments
  
end
