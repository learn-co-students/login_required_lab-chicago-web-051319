class SessionsController < ApplicationController

  def new
  end

  def create
    if params[:name] && !params[:name].empty? && !params[:name].nil?
      session[:name] = params[:name]
      redirect_to sessions_path
    else
      redirect_to root_path
    end

   end

   def destroy
    session[:name] = nil
    redirect_to root_path
  end

end
