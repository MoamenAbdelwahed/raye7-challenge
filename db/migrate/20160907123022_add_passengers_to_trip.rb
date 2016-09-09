class AddPassengersToTrip < ActiveRecord::Migration
  def change
  	change_table :users do |t|
  		t.belongs_to :trip
  	end
  end
end
