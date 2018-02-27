class SessionsController < ApplicationController

  def new

  end

  def create
    if params[:name].empty? || !!params[:name]
      redirect_to '/'
    else
      session[:name] = params[:name]
    end
  end

  def destroy
    session.destroy :name if session[:name] != nil
    redirect_to '/'
  end

end
