class UsersController < ApplicationController
  def new
    @user = User.new
  end

  def create # Create in database
    @user = User.new user_params
    if @user.save
    render root_path
    else
      render :new
    end
  end

#TODO make session controller so we can store @user and destroy 

private
  def user_params
    params.require(:user).permit(:email, :password, :password_confirmation)
  end

end
