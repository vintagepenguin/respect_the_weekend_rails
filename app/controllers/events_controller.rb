class EventsController < ApplicationController

	def index
		@events = Event.all 
	end

	def new
		@event = Event.new
	end

	def create
		@tags  = Tag.setup(params[:event][:tags])
		@event = Event.new(eventname: 	params[:event][:eventname],
											 location: 	  params[:event][:location],
											 price: 			params[:event][:price],
											 url: 				params[:event][:url],
											 start_date:  params[:event][:start_date],
											 start_time:  params[:event][:start_time])
		@event.shove(@tags)
		@event.save 
		redirect_to event_path(@event)
	end 

	def show
		@event = Event.last 
	end 

	def edit
	end 

	def update
	end 

	def destroy
	end 

end 
