class CreateEventTags < ActiveRecord::Migration
  def change
  	create_table :event_tags do |t|
  		t.belongs_to :events
  		t.belongs_to :tags

  		t.timestamps
  	end 
  end 
end
