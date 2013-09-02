class Event < ActiveRecord::Base
	attr_accessible :eventname, :location, :price, :url, :start_time, :start_date

	has_many :eventtags
	has_many :tags, through: :eventtags

	def shove(list)
		list.each do |element|
			self.tags << element
		end
	end
end 


