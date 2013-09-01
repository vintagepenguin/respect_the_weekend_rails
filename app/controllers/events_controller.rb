class EventsController < ApplicationController

	def index
		# @events = Event.all 
	end

	def new
		@event = Event.new
	end

	def create
		puts params
		@event = Event.new(eventname: 	params[:event][:eventname],
											 location: 	params[:event][:location],
											 price: 			params[:event][:price],
											 url: 				params[:event][:url],
											 start_date: params[:event][:start_date],
											 start_time: params[:event][:start_time] )
		@event.save 
		redirect_to event_path(@event)
	end 

	def show
	end 

	def edit
	end 

	def update
	end 

	def destroy
	end 

end 
