class AddUseridToVotes < ActiveRecord::Migration
  def change
    add_column :votes, :user_id, :decimal
  end
end
