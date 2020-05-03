class SessionsController < ApplicationController
  def new
  end

  def create
    session[:user] = params[:username]
    redirect_to root_path
  end

  def destroy
    session.delete :user
    redirect_to login_path
  end
end