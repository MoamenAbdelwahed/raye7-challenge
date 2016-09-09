class DeleteTripIdFromUsers < ActiveRecord::Migration
  def change
  	remove_column :users, :trip_id
  end
end
