class RemoveRatingfromVotes < ActiveRecord::Migration
  def change
  	remove_column :votes, :rating
  	remove_column :votes, :room_id
  	remove_column :votes, :user_id
  	add_column :votes, :rating, :integer
  	add_column :votes, :room_id, :integer
  	add_column :votes, :user_id, :string
  end
end
