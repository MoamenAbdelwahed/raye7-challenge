class UserBelongsToGroup < ActiveRecord::Migration
  def change
  	change_table :users do |t|
  		t.belongs_to :group, index: true
  	end
  end
end
