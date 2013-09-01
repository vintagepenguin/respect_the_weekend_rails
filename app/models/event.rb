class Event < ActiveRecord::Base
	attr_accessible :eventname, :location, :price, :url, :start_time, :start_date

	has_many :event_tags
	has_many :tags, through: :event_tags
end 


