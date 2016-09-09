class CreateJoinTableUsersTrips < ActiveRecord::Migration
  def change
    create_join_table :users, :trips do |t|
      # t.index [:user_id, :trip_id]
      # t.index [:trip_id, :user_id]
    end
  end
end
