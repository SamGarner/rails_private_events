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
    @user = User.find(session[:current_user_id])
    @event = @user.hosted_events.build(whitelisted_event_params)
    if @event.save
      redirect_to events_path
    else
      render :new
    end
  end

  private

  def whitelisted_event_params
    params.require(:event).permit(:date, :location, :description)
  end
end
