class CreateTrips < ActiveRecord::Migration
  def change
    create_table :trips do |t|
      t.string :departure_time 
      t.string :seats
      t.references :driver
      t.references :source
      t.references :destination
      t.timestamps null: false
    end
  end
end
