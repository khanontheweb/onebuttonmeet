class UsersController < ApplicationController
  before_action :set_user, only: [:show, :edit, :update, :destroy]
  def new
    @user = User.new
  end
  
  def index
  end

  def create
    @user = User.new(user_params)

    if @user.save
      if session[:user_id].nil?
        session[:user_id] = @user.id
      end
      redirect to @user #include flash/notice
    else
      render 'new'
    end

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
