class EventsController < ApplicationController
  def create
  end

  def update
  end

  def destroy
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
end
