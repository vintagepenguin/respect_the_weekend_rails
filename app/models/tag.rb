class Tag < ActiveRecord::Base 
	attr_accessible :name 

	has_many :eventtags
	has_many :events, through: :eventtags

	def self.setup(string)
		others = []
	  array = string.split(',')
	  array.each do |clean|
			 others << Tag.create(name: clean)
	  end
	  return others
 	end
end 