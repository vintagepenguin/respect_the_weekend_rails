class TagsController < ApplicationController

	def index
		@tags = Tag.all 
	end 

	def show
		@tags = Tag.all 
	end 
end 