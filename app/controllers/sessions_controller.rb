class SessionsController < ApplicationController

  def new

  end

  def create
    return redirect_to(controller: 'sessions',
                       action: 'new') if !params[:name] || params[:name].empty?
    session[:name] = params[:name]
    redirect_to controller: 'application', action: 'greeting'
  end

  def destroy
    session.delete :name if session[:name] != nil
    redirect_to '/'
  end

end
