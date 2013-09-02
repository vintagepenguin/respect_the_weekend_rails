class CreateEventTags < ActiveRecord::Migration
  def change
  	create_table :eventtags do |t|
  		t.integer :event_id
  		t.integer :tag_id

  		t.timestamps
  	end 
  end 
end
