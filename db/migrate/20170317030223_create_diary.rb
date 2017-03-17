class CreateDiary < ActiveRecord::Migration
def up
  	create_table :diary do |t|
  		t.string :entry
  		t.string :date
  	end
  end

  def down
  	drop_table :diary
  end
end