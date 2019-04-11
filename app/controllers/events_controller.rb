class EventsController < ApplicationController
  def create
    @event = Event.new(event_params)
    if @event.save
      redirect_to @event
    else
      # This line overrides the default rendering behavior, which
      # would have been to render the "create" view.
      render "new"
    end
  end

  def new
    @event = Event.new   
  end

  def edit
    @event = Event.find(params[:id])
  end

  def update
    @event = Event.find(params[:id])
    @event.update!(event_params)
    redirect_to @event
  end

  def destroy
    @event = Event.find(params[:id])
    @event.destroy
    redirect_to events_path
  end

  def index
    @events = Event.all
    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render xml: @events }
      format.json { render json: @events }
    end
  end

  def show
    @event = Event.find(params[:id])
 
    respond_to do |format|
      format.html
      format.xml  { render xml: @event }
      format.json { render json: @event }
    end
  end

  def upcoming_events
    end_date = Date.today + 2.months
    @events = Event.where(start_date: Date.today...end_date)
    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render xml: @events }
      format.json { render json: @events }
    end
  end

  def event_params
    params.require(:event).permit(:name, :description, :start_date, :event_vanue)
  end
end
