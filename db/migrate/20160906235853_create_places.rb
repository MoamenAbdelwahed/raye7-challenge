class CreatePlaces < ActiveRecord::Migration
  def change
    create_table :places do |t|
      t.string :name
      t.string :longitude
      t.string :latitude
      t.timestamps null: false
    end
  end
end
