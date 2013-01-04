class Vote < ActiveRecord::Base
  attr_accessible :amount, :room_id, :user_id
  validates_presence_of :amount, :room_id
end
