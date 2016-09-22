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
		if @event.save
			redirect_to @event, notice: 'Event successfully created!'
		else
			render :new
		end
	end

	def edit
	end

	def update
		if @event.update(event_params)
			redirect_to @event, notice: 'Event successfully updated!'
		else
			render :edit
		end
	end

	def destroy
		if @event.destroy
		end
		redirect_to events_path, notice: 'Event successfully deleted!'
	end

	private
		def set_event
			@event = Event.find(params[:id])
		end

		def event_params
			params.require(:event).permit(:name, :description, :location, :price, :starts_at, :image_file_name, :capacity)
		end
end
