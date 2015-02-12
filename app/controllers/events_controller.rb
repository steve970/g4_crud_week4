class EventsController < ApplicationController

  def index
    @events = Event.all
  end

  def new
    @event = Event.new
  end

  def create
    event = Event.new(event_params)
    event.save
    redirect_to events_path
  end

  def event_params
    params.require(:event).permit(:date, :location, :description, :capacity, :requires_id)
  end

end
