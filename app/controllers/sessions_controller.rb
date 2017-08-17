class SessionsController < ApplicationController

  def new
  end

  def create
    session[:name] = params[:name]
    if current_user == nil || current_user == ""
      redirect_to new_session_path
    else
      redirect_to '/sessions/index'
    end
  end

  def show

  end

  def destroy

    session[:name] = nil if session[:name]

    redirect_to 'new_session_path'
  end

end
