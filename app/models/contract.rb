class Contract < ActiveRecord::Base
  
# Association
  belongs_to :users
  belongs_to :teams
  
end
