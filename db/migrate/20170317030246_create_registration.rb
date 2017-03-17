class CreateRegistration < ActiveRecord::Migration
  def up
  	create_table :reg do |t|
  		t.string :name
  		t.string :email
  		t.string :username
  		t.string :password
  	end
  end

  def down
  	drop_table :reg
  end
end