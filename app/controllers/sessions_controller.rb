class SessionsController < ApplicationController

  def new

  end

  def create
    if params[:name].empty? || !!params[:name]
      redirect_to '/'
    end


end
