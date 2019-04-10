class UsersController < ApplicationController
  def create
    @users = User.new(params[:users])
    if @users.save
      redirect_to @users
    else
      # This line overrides the default rendering behavior, which
      # would have been to render the "create" view.
      render "new"
    end
  end


  def update
    
  end

  def destroy
  end

  def show
    @user = User.find(params[:id])
 
    respond_to do |format|
      format.html
      format.xml  { render xml: @user }
      format.json { render json: @user }
    end
  end

  def index
    @users = User.all
    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render xml: @users }
      format.json { render json: @users }
    end
  end
end
