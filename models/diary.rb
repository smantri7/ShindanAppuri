class Diary < ActiveRecord::Base
  def up
  	create_table :diaries do |t|
  		t.string :date
  		t.string :entry
  	end
  end

  def down
  	drop_table :diaries
  end
end