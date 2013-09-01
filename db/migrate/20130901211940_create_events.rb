class CreateEvents < ActiveRecord::Migration
  def change
  	create_table :events do |t|
  		t.string :eventname
  		t.string :location
  		t.string :price 
  		t.text   :url 
  		t.date   :start_date
  		t.date   :end_date
  		t.time 	 :start_time
  		

  		t.timestamps
  	end 
  end 
end

