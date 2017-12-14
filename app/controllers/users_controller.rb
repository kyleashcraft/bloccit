class UsersController < ApplicationController
  def new
    @user = User.new
  end

  def create
    @user = User.new
    @user.name = params[:user][:name]
    @user.email = params[:user][:email]
    @user.password = params[:user][:password]
    @user.password_confirmation = params[:user][:password_confirmation]

    if @user.save
      flash[:notice] = "New account created! Welcome to Bloccit #{@user.name}!"
      redirect_to root_path
    else
      flash.now[:alert] = "Failed to create new account. Please try again."
      render :new
    end
  end

end