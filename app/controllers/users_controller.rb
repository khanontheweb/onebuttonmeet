class UsersController < ApplicationController
  before_action :set_user, only: [:show, :edit, :update, :destroy]
  def new
    @user = User.new
  end
  
  def index
  end

  def create
    @user = User.new(user_params)
  end

  def show
  end

  def update
  end

  def destroy
  end

  private 

  def user_params
    params.require(:user).permit(:email, :password, :fname, :lname)
  end

  def set_user
    @user = User.find(params[:id])
  end
end
