class Event_Tag < ActiveRecord::Base 
	belongs_to :events
	belongs_to :tags
end 