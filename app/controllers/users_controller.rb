class UsersController < ApplicationController

  def show
    @user = User.find(params[:id])
    @title = @user.name
  end

  def new
    @user = User.new
    @title = "Sign up"
  end

  def create
    @user = User.new(params[:user])
    if @user.save
      flash[:success] = "Welcome to Mealstory!"
      redirect_to @user
    else 
      @title = "Sign Up"
      render 'new'
    end
  end

end