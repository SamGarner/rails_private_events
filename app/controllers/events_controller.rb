class EventsController < ApplicationController
  def index
    @events = Event.all
  end

  def show
    @event = Event.find(params[:id])
  end

  def new
    @event = Event.new
  end

  def create
    @event = Event.new(whitelisted_event_params)
    if @event.save?
      redirect_to events_path
    else
      render :new
    end
  end
end
