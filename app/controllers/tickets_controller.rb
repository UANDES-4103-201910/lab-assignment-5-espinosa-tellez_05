class TicketsController < ApplicationController
 def create
    @ticket = Ticket.new(ticket_params)
    if @ticket.save
      redirect_to @ticket
    else
      # This line overrides the default rendering behavior, which
      # would have been to render the "create" view.
      render "new"
    end
  end

  def new
    @ticket = Ticket.new   
  end

  def edit
    @ticket = Ticket.find(params[:id])
  end


  def update
    @ticket = Ticket.find(params[:id])
    @ticket.update!(ticket_params)
    redirect_to @ticket
  end

  def destroy
    @ticket = Tciket.find(params[:id])
    @ticket.destroy
    redirect_to tickets_path
  end

  def show
    @ticket = Ticket.find(params[:id])
 
    respond_to do |format|
      format.html
      format.xml  { render xml: @ticket }
      format.json { render json: @ticket }
    end
  end

  def index
    @tickets = Ticket.all
    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render xml: @tickets }
      format.json { render json: @tickets }
    end
  end

  def ticket_params
    params.require(:ticket).permit(:ticket_order, :order)
  end
end
