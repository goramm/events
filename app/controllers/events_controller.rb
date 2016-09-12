class EventsController < ApplicationController
	before_action :set_event, only: [:show, :edit, :update, :destroy]

	def index
		@events = Event.upcoming
	end

	def show
	end

	def new
		@event = Event.new
	end

	def create
		@event = Event.new(event_params)
		@event.save
		redirect_to @event
	end

	def edit
	end

	def update
		@event.update(event_params)
		redirect_to @event
	end

	def destroy
		@event.destroy
		redirect_to events_path
	end

	private
		def set_event
			@event = Event.find(params[:id])
		end

		def event_params
			params.require(:event).permit(:name, :description, :location, :price, :starts_at, :image_file_name, :capacity)
		end
end
