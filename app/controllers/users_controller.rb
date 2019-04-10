class UsersController < ApplicationController
  def create
    @user = User.new(user_params)
    if @user.save
      redirect_to @user
    else
      # This line overrides the default rendering behavior, which
      # would have been to render the "create" view.
      render "new"
    end
  end

  def new
  	@user = User.new   
  end

  def edit
  	@user = User.find(params[:id])
  end

  def update
  	@user = User.find(params[:id])
    @user.update!(user_params)
    redirect_to @user
  end

  def destroy
  	@user = User.find(params[:id])
    @user.destroy
    redirect_to users_path
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

  def user_params
  	params.require(:user).permit(:name, :lastname, :email, :password, :address)
  end
end
