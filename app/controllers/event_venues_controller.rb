class EventVenuesController < ApplicationController
  def create
    @event_venue = EventVenue.new(event_venue_params)
    if @event_venue.save
      redirect_to @event_venue
    else
      # This line overrides the default rendering behavior, which
      # would have been to render the "create" view.
      render "new"
    end
  end

  def new
    @event_venue = EventVenue.new   
  end

  def edit
    @event_venue = EventVenue.find(params[:id])
  end


  def update
    @event_venue = EventVenue.find(params[:id])
    @event_venue.update!(event_venue_params)
    redirect_to @event_venue
  end

  def destroy
    @event_venue = EventVenue.find(params[:id])
    @event_venue.destroy
    redirect_to event_venues_path
  end

  def show
    @event_venue = EventVenue.find(params[:id])
 
    respond_to do |format|
      format.html
      format.xml  { render xml: @event_venue }
      format.json { render json: @event_venue }
    end
  end

  def index
    @event_venues = EventVenue.all
    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render xml: @event_venues }
      format.json { render json: @event_venues }
    end
  end

  def event_venue_params
    params.require(:event_venue).permit(:name, :address, :capacity)
  end
end
