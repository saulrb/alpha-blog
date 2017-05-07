class UsersController < ApplicationController
  
  before_action :add_title, only: [:new]
  
  def new
    @user = User.new
  end
  
  def create
    @user = User.new(user_params)
    if @user.save
      flash[:success] = "Welcome to the alpha blog #{@user.user_name}"
      redirect_to articles_path
    else
      render 'new'
    end
  end

  def show
    @title_box = 'Showing user'
  end
  
  def add_title
    @title_box = 'Singup for Alpha Blog'
  end

  private
  
  def user_params
    params.require(:user).permit(:user_name,:email,:password)
  end

  
end  