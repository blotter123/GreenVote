class Room < ActiveRecord::Base
  attr_accessible :name, :temp
  belongs_to :building
  has_many :votes
end
