class CreateVotes < ActiveRecord::Migration
  def change
    create_table :votes do |t|
      t.decimal :rating
      t.decimal :room_id

      t.timestamps
    end
  end
end
