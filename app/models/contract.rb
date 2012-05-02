class Contract < ActiveRecord::Base
  
# Association
  belongs_to :user
  belongs_to :team
  
end
