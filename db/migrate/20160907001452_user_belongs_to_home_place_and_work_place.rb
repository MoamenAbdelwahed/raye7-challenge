class UserBelongsToHomePlaceAndWorkPlace < ActiveRecord::Migration
  def change
  	change_table :users do |t|
  		t.references :home_place
  		t.references :work_place
  	end
  end
end
