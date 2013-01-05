class Vote < ActiveRecord::Base
  attr_accessible :amount, :room_id, :user_id, :building_id
  validates_presence_of :amount, :building_id
  belongs_to :room
  belongs_to :building
end
