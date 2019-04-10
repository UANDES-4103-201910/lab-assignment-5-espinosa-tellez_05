class EventVenuesController < ApplicationController
  def create
  end

  def update
  end

  def destroy
  end

  def index
    @event_venues = EventVenue.all
    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render xml: @event_venues }
      format.json { render json: @event_venues }
    end
  end

  def show
    @event_venue = EventVenue.find(params[:id])
 
    respond_to do |format|
      format.html
      format.xml  { render xml: @event_venue }
      format.json { render json: @event_venue }
    end
  end
end
