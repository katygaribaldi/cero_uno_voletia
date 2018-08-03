class EventsController < ApplicationController
before_action :set_event, only: [:show, :edit, :delete, :update] 
before_action :require_login, only: [:create, :delete, :edit, :update]

	def index
		@events = Event.all
	end

	def show
		#@event = set_event
		#agarramos el ide dle URL y encuentralo y guardalo en una variable d einstancia que se llama event
	end

	def new
		@event = Event.new
	end

	def create
		Event.create(name: params[:event][:name], description: params[:event][:description])
		redirect_to root_path
	end

	def edit
		#@event = set_event
		#agarramos el ide dle URL y encuentralo y guardalo en una variable d einstancia que se llama event

	end

	def update
		#@event = set_event
		@event.name = params[:event][:name]
		@event.description = params[:event][:description]
		@event.save

		redirect_to event_path
		#agarramos el ide dle URL y encuentralo y guardalo en una variable d einstancia que se llama event
		
	end

	def delete
		#@event = set_event
		@event.destroy

		redirect_to root_path
	end

	private

	def set_event
		@event = Event.find(params[:id])
	end

	def require_login
		redirect_to pages_forbidden_path 
	end

end
