class Vote < ActiveRecord::Base
  attr_accessible :rating, :room_id, :user_id
  validates_presence_of :rating, :room_id, :user_id
  belongs_to :room
end
