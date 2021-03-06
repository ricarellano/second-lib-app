class UsersController < ApplicationController
  def index
    @users = User.all
  end

  def new
  # we make a new user
  # to pass to the form view later
  @user = User.new
end

def create
  @user = User.create(user_params)
  redirect_to root_path
end

private

def user_params
  params.require(:user).permit(:first_name, :last_name, :email, :password)
end
end
