class SessionsController < ApplicationController
  def create
    user = User.where('lower(name) = ?', params[:name].downcase).first
    if user and user.authenticate(params[:password])
      session[:user_id] = user.id
      session[:user_name] = user.name
      redirect_to admin_index_url
    else
      redirect_to login_url, alert: "Invalid user/password combination"
    end
  end

  def destroy
    session[:user_id] = nil
    session[:user_name] = nil
    redirect_to school_url, notice: "Logged out"
  end
end
