class UsersController < ApplicationController

protect_from_forgery
before_action :authenticate_admin!

  def new
    @user = User.new
  end

  def create
    @user = User.new

    @user.user_name = params[:user][:user_name]
    @user.email = params[:user][:email]
    @user.password = params[:user][:password]

    if @user.save
      redirect_to root_path
    else
      flash.now[:alert] = 'Unsuccessful Sign Up'
      render :new
    end
  end

  def show

  end

end
