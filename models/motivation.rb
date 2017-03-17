class Motivation < ActiveRecord::Base
  def up
  	create_table :motivations do |t|
  		t.string :quote
  	end
  end

  def down
  	drop_table :motivations
  end
end