class UsersController < ApplicationController
  def index
  end

  def create
  	User.create(user_params)
  end


  private
  def user_params
  	params.require(:user).permit(:email, :password, :role)
  end
end
