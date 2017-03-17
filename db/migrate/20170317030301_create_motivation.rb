class CreateMotivation < ActiveRecord::Migration[5.0]
  def up
  	create_table :moti do |t|
  		t.string :quote
  	end
  end

  def down
  	drop_table :moti
  end
end
