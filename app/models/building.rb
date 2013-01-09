class Building < ActiveRecord::Base
  attr_accessible :name
  has_many :rooms
  has_many :votes
  
end
