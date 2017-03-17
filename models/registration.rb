class Registration < ActiveRecord::Base
  def up
  	create_table :registrations do |t|
  		t.string :name
  		t.string :email
  		t.string :username
  		t.string :password
  	end
  end

  def down
  	drop_table :registrations
  end
end