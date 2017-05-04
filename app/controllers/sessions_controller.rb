class SessionsController < ApplicationController

  def new
  end

  def create
    if !logged_in?
      session[:name] = params[:name]
    end
    if logged_in?
      redirect_to secret_path
    else
      redirect_to login_path
    end
  end

  def destroy
    if logged_in?
      session[:name] = nil
    end
    redirect_to login_path
  end

end
