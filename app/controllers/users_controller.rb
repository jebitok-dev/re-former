class UsersController < ApplicationController
  # def index
  #   @users = User.all
  # end
 
  # def show
  #   @user = User.find(params[:id])
  # end

  def new
    @user = User.new
  end
  
  def create
    @user = User.new(params_user)
    if @user.save
      redirect_to new_user_path
    else
      render :new
    end
  end

  def edit
    @user = User.find(params[:id])
  end

  def update
    @user = User.find(params[:id])
    if @user.update(params_user)
      redirect_to new_user_path
    else
      render :edit
    end
  end
   
  private
  def params_user
    params.require(:user).permit(:username, :email, :password)
  end
end