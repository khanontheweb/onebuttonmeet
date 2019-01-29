class EventsController < ApplicationController
  before_action :set_event, only: [:show]
  def new
    @event = Event.new
  end
  
  def create
    @event = current_user.events.create(event_params)
  
    if @event
      redirect_to @event
    else
      render 'new'
    end
  end

  def show
  end

  def update
  end

  def destroy
  end

  def index
    @events = Event.all
  end

  private

  def event_params
    params.require(:event).permit(:title,:lat, :lng, :live)
  end

  def set_event
    @event = Event.find(params[:id])
  end
end
