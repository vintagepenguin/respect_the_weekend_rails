class Tag < ActiveRecord::Base 
	attr_accessible :name 

	has_many :eventtags
	has_many :events, through: :eventtags
end 