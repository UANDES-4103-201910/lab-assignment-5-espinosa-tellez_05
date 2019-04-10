class TicketsController < ApplicationController
  def create
  end

  def update
  end

  def destroy
  end

  def index
    @tickets = Ticket.all
    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render xml: @tickets }
      format.json { render json: @tickets }
    end
  end

  def show
    @ticket = Ticket.find(params[:id])
 
    respond_to do |format|
      format.html
      format.xml  { render xml: @ticket }
      format.json { render json: @ticket }
    end
  end
end
