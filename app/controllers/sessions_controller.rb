class SessionsController < ApplicationController
  def new
  end

  def create
    @user = User.find_by :email => params[:email] # Find me the user who has these email details i.e. we pass in the params[:email] that they input
    if @user.present? && @user.authenticate(params[:password])
      session[:user_id] = @user.id
      redirect_to designs_path
    else
      flash[:error] = "Invalid email or password."
      redirect_to login_path
    end
  end

  def destroy
    session[:user_id] = nil
    redirect_to root_path
  end
end
